#!/bin/bash
#SBATCH --job-name=create_scaffold_basic
#SBATCH --ntasks=40
#SBATCH --mem=26GB
#SBATCH --time=6:00:00
#SBATCH --partition=single

## Import module
Module load devel/minionda/3

##Activate python environment
#sh /opt/bwhpc/common/devel/miniconda/3-py39-4.12.0/bin/activate /home/hd/hd_hd/hd_by260/.conda/envs/pow
conda init bash
conda activate /home/hd/hd_hd/hd_by260/.conda/envs/pow
source ~/.bashrc

##Run script

python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/1_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/2_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/3_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/4_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/5_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/6_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/7_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/8_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/9_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/10_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/11_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/12_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/13_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/14_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/15_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/16_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/17_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/18_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/19_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/20_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/21_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/22_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/23_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/24_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/25_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/26_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/27_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/28_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/29_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/30_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/31_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/32_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/33_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/34_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/35_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/36_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/37_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/38_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/39_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/40_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/41_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/42_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/43_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/44_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/45_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/46_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/47_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/48_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/49_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/50_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/51_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/52_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/53_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/54_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/55_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/56_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/57_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/58_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/59_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/60_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/61_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/62_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/63_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/64_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/65_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/66_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/67_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/68_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/69_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/70_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/71_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/72_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/73_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/74_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/75_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/76_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/77_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/78_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/79_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/80_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/81_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/82_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/83_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/84_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/85_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/86_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/87_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/88_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/89_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/90_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/91_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/92_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/93_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/94_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/95_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/96_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/97_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/98_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/99_
python spatialpower/tissue_generation/random_circle_packing.py -x 1000 -y 1000 --visualization --rmax 10 --rmin 10 -o sample_results/100_