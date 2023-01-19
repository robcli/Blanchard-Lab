# Blanchard-Lab

Conda.sh 
To use conda in a slurm file, you need to find the conda.sh file in your .conda directory for the source command. The following script will help you find it.  
conda info | grep -i 'base environment' . If not, use ood.unity.rc.umass.edu to help find it.


Prokka
  
  prokka_run:
  Automatically runs a folder with fna. To run fasta extensions, change *fna to *fasta. 
  
GTDBTK

  db_download:
  Used in case conda is trying to install the GTDB db into your home directory. Change PATH_TO_FILE0's to the db folder. Should look a little like this: /.conda/envs/gtdbtk-2.1.1/share/gtdbtk-2.1.1/db" . 

  Classify: 
  Will compare user MAGs and fit them into the entire GTDB phylogeny. Run with adequate memory, >64 GB. 

  Infer:
  Can be run on the  gtdbtk.bac120/ar53.user_msa.fasta file in the align folder from classify. Generates a phylogeny with only user MAGs.
