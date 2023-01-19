#!/bin/bash
#SBATCH -c 6  # Number of Cores per Task
#SBATCH --mem=65536  # Requested Memory
#SBATCH -p gpu  # Partition
#SBATCH -G 1  # Number of GPUs
#SBATCH -t 03:00:00  # Job time limit
#SBATCH -o slurm-%j.out  # %j = job ID


source /modules/apps/miniconda/4.8.3/envs/jupyterhub-stable/etc/profile.d/conda.sh
conda activate gtdbtk-2.1.1
gtdbtk infer --msa_file gtdbtk.ar53.user_msa.fasta --out_dir infer_archaea --cpus 6
