#!/bin/bash

#SBATCH -t 08:00:00
#SBATCH -o /scratch/inf0/user/yuchi/slurm-%j.out
 
# call your program here
source /CT/datasetNeRF/work/anaconda3/bin/activate
conda activate semantic_nerf
python3 /CT/datasetNeRF/work/semantic_nerf/train_SSR_main.py --pixel_denoising --pixel_noise_ratio 0.5 --gaussian_noise --config /CT/datasetNeRF/work/semantic_nerf/SSR/configs/SSR_room0_config_denoising50_gaussian_noise.yaml --visualise_save
