#!/bin/bash
eval "$(conda shell.bash hook)"
conda activate pow

# Move to the correct working directory (adjust if needed)
cd /Users/chiaraschiller/Documents/Schapiro/projects/SCNA_thesis/github/IST_gen/IST_generation_SCNA

# Define the output directory (using the relative path that worked manually)
OUTPUT_FOLDER="./../../../data/20250217_sym00_nbh2_1000dim_grid200_300iter_50swaps"

# Check if the directory exists
if [[ -d "$OUTPUT_FOLDER" ]]; then
    echo "Output folder exists: $OUTPUT_FOLDER"
else
    echo "Output folder does NOT exist. Creating it..."
    #mkdir -p "$OUTPUT_FOLDER"
fi

# Define cell type probability options
CT_PROBABILITIES=("0.05" "0.1" "0.15" "0.2" "0.25" "0.35" "0.45" "0.55")
NH_PROBABILITIES=("random" "weak_pref" "strong_pref")
SCAFFOLD_START=1
SCAFFOLD_END=100

# Loop over all combinations of ct_prob and nh_prob
for ct_prob in "${CT_PROBABILITIES[@]}"; do
    for nh_prob in "${NH_PROBABILITIES[@]}"; do
        echo "Running simulation with ct_prob=$ct_prob and nh_prob=$nh_prob"
        
        python scripts/IST_4ct_heuristic_simulation_symmetric.py \
            --ct_prob "$ct_prob" \
            --nh_prob "$nh_prob" \
            --scaffold_range "$SCAFFOLD_START" "$SCAFFOLD_END" \
            --output_folder "$OUTPUT_FOLDER"

        echo "Checking output folder contents..."
        ls -lh "$OUTPUT_FOLDER"
    done
done

echo "All simulations completed!"
