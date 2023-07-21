### Cell type assignment for 4 cell types with heuristic approach, asymmetric dataset

import numpy as np
import pandas as pd
import spatialpower.tissue_generation.assign_labels as assign_labels
import spatialpower.tissue_generation.visualization as viz
import spatialpower.neighborhoods.permutationtest as perm_test
import matplotlib.pyplot as plt
import networkx as nx 
import os
import gzip

# Run the script with the  different tissue scaffolds generated before (scaffold_create.py)
# set number of scaffolds it should use

i = list(range(1, 101))

#loop through tissue scaffolds
for i in i:
    # load tissue scaffolds
    A = np.load(f"./sample_results/{i}_A.npy")
    C = np.load(f"./sample_results/{i}_C.npy")

    # set cell type probabilities for four cell types. These are all 5 different vectors I used for the plot you see in the mail. First value is ct 0.
    
    #cell_type_probabilities = np.array([0.05, 0.32, 0.32, 0.31])
    #cell_type_probabilities = np.array([0.1, 0.3, 0.3, 0.3])
    #cell_type_probabilities = np.array([0.15, 0.28, 0.28, 0.29])
    #cell_type_probabilities = np.array([0.2, 0.27, 0.27, 0.26])
    cell_type_probabilities = np.array([0.25, 0.25, 0.25, 0.25])

    # set neighborhood probabilities. 
    # Again, these are the 3 different proximity likelyhood matrices I used for simulating random, weak or strong cross preference ct 0 to ct 1.

    #neighborhood_probabilities = np.array(([0.25, 0.25, 0.25, 0.25],
    #                                    [0.25, 0.25, 0.25, 0.25],
    #                                    [0.25, 0.25, 0.25, 0.25],
    #                                    [0.25, 0.25, 0.25, 0.25])) 
    
    #neighborhood_probabilities = np.array(([0.13, 0.6, 0.13, 0.14],
    #                                    [0.29, 0.13, 0.29, 0.29],
    #                                    [0.29, 0.13, 0.29, 0.29],
    #                                    [0.29, 0.14, 0.29, 0.28]))
    
    neighborhood_probabilities = np.array(([0.18, 0.45, 0.18, 0.19],
                                        [0.28, 0.18, 0.27, 0.27],
                                        [0.27, 0.19, 0.27, 0.27],
                                        [0.27, 0.18, 0.28, 0.27]))

    #build assignment matrix 

    def build_assignment_matrix(attribute_dict, n_cell_types):
        data = list(attribute_dict.items())
        data = np.array(data) # Assignment matrix
    
        B = np.zeros((data.shape[0],n_cell_types)) # Empty matrix
    
        for j in range(0, data.shape[0]):
            t = data[j,1]
            B[j,t] = 1
    
        return B 

    # get position dictionary
    position_dict = dict()
    for j in range(0, C.shape[0]):
        position_dict[j] = C[j, :]
    
    # heuristic assignment of cell types 
    graph = nx.from_numpy_array(A)

    cell_assignments = assign_labels.heuristic_assignment(graph, cell_type_probabilities, neighborhood_probabilities, mode='graph', dim=1000, position_dict=position_dict, grid_size=200, revision_iters=1000, n_swaps=250)

    B = build_assignment_matrix(cell_assignments, n_cell_types=4)

    # get visualization
    viz.make_vor(1000, cell_assignments, position_dict, 4, './visualization_', f"crossweak_{i}", [x for x in range(0, C.shape[0])])
    # get output for downstream tools and save them in sample_results folder
    array = list(cell_assignments.values())
    data = np.column_stack((C, array))

    #colnames = ['x', 'y', 'ct']
    df = pd.DataFrame(data, columns=colnames)
    df.to_csv(f"Sim_nbh15_asym01_1000_grid0.2_1kiter_025kswap/ran_ab0_0.05_{i}.csv", index=False)