import numpy as np
import pandas as pd
import argparse
import spatialpower.tissue_generation.assign_labels as assign_labels
import spatialpower.tissue_generation.visualization as viz
import networkx as nx
import os

# Define cell type and neighborhood probability options
CT_PROBABILITIES = {
    "0.05":  np.array([0.05, 0.32, 0.32, 0.31]),
    "0.1":  np.array([0.1, 0.3, 0.3, 0.3]),
    "0.15":  np.array([0.15, 0.28, 0.28, 0.29]),
    "0.2":  np.array([0.2, 0.27, 0.27, 0.26]),
    "0.25":  np.array([0.25, 0.25, 0.25, 0.25]),
    "0.35":  np.array([0.35, 0.22, 0.22, 0.21]),
    "0.45":  np.array([0.45, 0.18, 0.18, 0.19]),
    "0.55":  np.array([0.55, 0.15, 0.15, 0.15])
}

NH_PROBABILITIES = {
    "random": np.full((4, 4), 0.25),
    "weak_pref": np.array([[0.45, 0.18, 0.18, 0.19],
                            [0.18, 0.27, 0.28, 0.27],
                            [0.18, 0.28, 0.27, 0.27],
                            [0.19, 0.27, 0.27, 0.27]]),
    "strong_pref": np.array([[0.60, 0.13, 0.13, 0.14],
                            [0.13, 0.29, 0.29, 0.29],
                            [0.13, 0.29, 0.29, 0.29],
                            [0.14, 0.29, 0.29, 0.28]])
}

def build_assignment_matrix(attribute_dict, n_cell_types):
    """Convert attribute dictionary to assignment matrix."""
    data = np.array(list(attribute_dict.items()))
    B = np.zeros((data.shape[0], n_cell_types))
    for j in range(data.shape[0]):
        B[j, int(data[j, 1])] = 1
    return B

def simulate_tissue(scaffold_id, ct_prob, nh_prob, output_folder):
    """Run the tissue simulation for a given scaffold."""
    A = np.load(f"./sample_results/{scaffold_id}_A.npy")
    C = np.load(f"./sample_results/{scaffold_id}_C.npy")
    np.random.seed(scaffold_id)

    position_dict = {j: C[j, :] for j in range(C.shape[0])}
    graph = nx.from_numpy_array(A)

    # Assign labels
    cell_assignments = assign_labels.heuristic_assignment(
        graph, 
        ct_prob, 
        nh_prob, 
        mode='graph',
        dim=1000, 
        position_dict=position_dict, 
        grid_size=200,
        revision_iters=300, 
        n_swaps=50)

    B = build_assignment_matrix(cell_assignments, n_cell_types=4)

    # Save visualization for the first scaffold
    if scaffold_id == 1:
        viz.make_vor(1000, cell_assignments, position_dict, 4,
                     f'{output_folder}/../20250217_visualisation/',
                     f"sim_{scaffold_id}", list(range(C.shape[0])))

    # Save output
    df = pd.DataFrame(np.column_stack((C, list(cell_assignments.values()))), columns=['x', 'y', 'ct'])
    if args.nh_prob == "random":
        df.to_csv(f"{output_folder}/ran_ab0_{args.ct_prob}_{scaffold_id}.csv", index=False)
    else:
        if args.nh_prob == "weak_pref":
            df.to_csv(f"{output_folder}/self00_0.45_ab0_{args.ct_prob}_{scaffold_id}.csv", index=False)
        else:
            df.to_csv(f"{output_folder}/self00_0.6_ab0_{args.ct_prob}_{scaffold_id}.csv", index=False)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Simulate tissue scaffold assignment.")
    parser.add_argument("--ct_prob", choices=CT_PROBABILITIES.keys(), default="default",
                        help="Choose cell type probabilities (default, balanced, high_ct0).")
    parser.add_argument("--nh_prob", choices=NH_PROBABILITIES.keys(), default="strong_pref",
                        help="Choose neighborhood probabilities (random, weak_pref, strong_pref).")
    parser.add_argument("--output_folder", type=str, default="sanity_check_3",
                        help="Folder to save results.")
    parser.add_argument("--scaffold_range", type=int, nargs=2, default=[1, 100],
                        help="Range of scaffold IDs to process (start, end).")
    
    args = parser.parse_args()
    os.makedirs(args.output_folder, exist_ok=True)

    for scaffold_id in range(args.scaffold_range[0], args.scaffold_range[1] + 1):
        simulate_tissue(scaffold_id, CT_PROBABILITIES[args.ct_prob], NH_PROBABILITIES[args.nh_prob], args.output_folder)
