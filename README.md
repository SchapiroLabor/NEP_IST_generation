# In silico tissue (IST) generation for NEP comparison
In silico tissue generation for generation of tissue cohorts for SCNA comparison (https://www.nature.com/articles/s41592-023-01766-6)

## Summary
We generated in silico tissues (IST) using the open source IST generation method from Baker et al.(2023). We used the provided Python scripts for tissue scaffold generation and cell type label assignment (klarman-cell-observatory/PowerAnalysisForSpatialOmics). This repo copied the spatialpower folder from the respective githubrepository and uploaded in here. We only adapted the random_circle_packing.py script to also extract matrices as .csv file for labeling instead of only visualization images, as now merged in https://github.com/klarman-cell-observatory/PowerAnalysisForSpatialOmics/pull/7.

First, blank tissue scaffolds are generated with a random-circle packing algorithm (scaffold_create.sh). Parameters for field of view (FOV) size f and rmax and rmin radius can be varied. For cell type labeling, we simulated cohorts with differing cell-cell adjacencies and cell type abundances of cell type 0. The user can adapt these parameters in the script as indiacted. We used the heuristic labeling approach of the paper.

![Untitled (12)](https://github.com/SchapiroLabor/IST_generation_SCNA/assets/94467188/369c2058-3b94-4c98-86e5-4f0a3f1980dd)


## Usage

### Conda environment
`conda create -n pow python=3.9 networkx=2.6.2 matplotlib=3.4.2 scipy jupyter -c conda-forge`


### Tissue simulation
We generated 100 empty tissue scaffolds for labelling with the indicated parameters. Seeds were set based on the given first number of the output file name. Either use provided bash script to recreate the study simulated data (scaffold_create.sh) or

`python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/1_` 

Second, we assigned cell type labels in the empty tissue scaffold using bash scripts that combine all different cell type abundance levels with the different cell-cell adjacency matrices (symmetric or asymmetric dataset in the study). Seeds were set based on the scaffold number used (sym_dataset_create.sh, asym_dataset_create.sh).

### Structure
#### spatialpower:
- files from original github repository `klarman-cell-observatory/PowerAnalysisForSpatialOmics` for scaffold generation and cell type labeling. Minorly adapted to extract .csv matrices for labeling.

#### scripts
- IST_4ct_heuristic_simulation_symmetric.py: Script for cell type labeling with heuristic approach generating cohorts for symmetric dataset with differrent levels of self preference of cell type 0 (random, weak, strong). 4 cell types, different cell type 0 abundance options. 
- IST_4ct_heuristic_simulation_asymmetric.py: Script for cell type labeling with heuristic approach generating cohorts for ssymmetric dataset with differrent levels of cross preference of cell type 0 to cell  type 1 (random, weak, strong). 4 cell types, different cell type 0 abundance options.

#### home
- scaffold_create.sh: bash script for creating tissue scaffolds on Helix cluster. Alternatively, run `python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/1_` for creating empty tissue scaffold from command line and vary naming number from 1-100.
- sym_dataset_create.sh: bash script for assigning labels on empty tissue scaffold from scaffold_create.sh. This script runs IST_4ct_heuristic_simulation_symmetric.py with all combinations of cell type abundances and cell-cell adjacencies. It was used for generation of the symmetric D1 dataset with self preference of ct 0. 
- asym_dataset_create.sh: bash script for assigning labels on empty tissue scaffold from scaffold_create.sh. This script runs IST_4ct_heuristic_simulation_ssymmetric.py with all combinations of cell type abundances and cell-cell adjacencies. Used for generation of the asymmetric D2 dataset with cross preference of ct 0 to ct 1. 