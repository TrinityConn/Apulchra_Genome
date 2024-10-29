#!/bin/bash
#SBATCH -t 6:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=30GB
#SBATCH --mail-type=BEGIN,END,FAIL #email you when job starts, stops and/or
#SBATCH --mail-user=trinity.conn@uri.edu #your email to send notifications
#SBATCH --account=putnamlab
#SBATCH -o slurm-%j.out
#SBATCH -e slurm-%j.error


source ~/.bashrc 

mamba create -n funannotate funannotate 
