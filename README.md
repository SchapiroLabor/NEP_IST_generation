# IST_generation_SCNA
In silico tissue generation for generation of tissue cohorts for SCNA comparison (https://www.nature.com/articles/s41592-023-01766-6)

## Summary
We generated in silico tissues (IST) using the open source IST generation method from Baker et al.(2023). We used the provided Python scripts for tissue scaffold generation and cell type label assignment (klarman-cell-observatory/PowerAnalysisForSpatialOmics). This repo copied the spatialpower folder from the respective githubrepository and uploaded in here. We only adapted the random_circle_packing.py script to also extract matrices as .csv file for lableing instead of only visualization images.

First, blank tissue scaffolds are generated with a random-circle packing algorithm. Parameters for field of view (FOV) size f and rmax and rmin radius can be varied. For cell type labeling, we simulated cohorts with differing cell-cell adjacencies and cell type abundances of cell type 0. The user can adapt these paramteres in the script as indiacted. We used the heuristic labeling approach of the paper.

![Untitled (12)](https://github.com/SchapiroLabor/IST_generation_SCNA/assets/94467188/369c2058-3b94-4c98-86e5-4f0a3f1980dd)


## Usage

### conda environment
`conda create -n pow python=3.9 networkx=2.6.2 matplotlib=3.4.2 scipy jupyter -c conda-forge`

First, create conda environment. Then, generate empty tissue scaffolds for labelling and save matrices. Either use provided bash script or

`python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/1_` 

Finally, assign cell type labels in the empty tissue scaffold with either IST_4ct_heuristic_sim_symmetric.py or IST_4ct_heuristic_sim_asymmetric.py

### Structure
spatialpower:
- files from original github repository `klarman-cell-observatory/PowerAnalysisForSpatialOmics` for scaffold generation and cell type labeling. Minorly adapted to extract .csv matrices for labeling

main folder
- IST_4ct_heuristic_sim_symmetric.py: Script for cell type labeling with heuristic approoach generating cohorts for symmetric dataset with differrent levels of self preference of cell type 0 (random, weak, strong). 4 cell types, different cell type 0 abundance options. 
- IST_4ct_heuristic_sim_asymmetric.y: Script for cell type labeling with heuristic approoach generating cohorts for ssymmetric dataset with differrent levels of cross preference of cell type 0 to cell  type 1 (random, weak, strong). 4 cell types, different cell type 0 abundance options.
- scaffold_creat.sh: bash script for creating tissue scaffolds on Helix cluster. Alternatively, run `python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/1_` for creating empty tissue scaffold from command line.
