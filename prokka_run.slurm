#!/bin/bash
#SBATCH -c 16  # Number of Cores per Task
#SBATCH --mem=32768  # Requested Memory
#SBATCH -p gpu  # Partition
#SBATCH -G 1  # Number of GPUs
#SBATCH -t 06:00:00  # Job time limit
#SBATCH -o slurm-%j.out  # %j = job ID



source /modules/apps/miniconda/4.8.3/envs/jupyterhub-stable/etc/profile.d/conda.sh
conda activate prokka
cd /PATH_TO_FOLDER

ls *.fna | parallel --verbose "prokka {} --cpus 16 --prefix {.}_prokka"
