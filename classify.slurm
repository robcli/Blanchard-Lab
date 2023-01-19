#!/bin/bash
#SBATCH -c 16  # Number of Cores per Task
#SBATCH --mem=81920  # Requested Memory
#SBATCH -p gpu  # Partition
#SBATCH -G 1  # Number of GPUs
#SBATCH -t 04:00:00  # Job time limit
#SBATCH -o slurm-%j.out  # %j = job ID


source /modules/apps/miniconda/4.8.3/envs/jupyterhub-stable/etc/profile.d/conda.sh
conda activate gtdbtk-2.1.1
gtdbtk classify_wf --genome_dir /PATH_TO_FOLDER --out_dir classify_wf_archaea --cpus 16
