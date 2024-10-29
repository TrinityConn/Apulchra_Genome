#!/bin/bash
#SBATCH --nodes=
#SBATCH --ntasks=
#SBATCH --mem=
#SBATCH --time=48:00:00
#SBATCH --job-name=

source ~/.bashrc

conda activate repeatmasker

cd /$PATHTOGENOME

BuildDatabase \
	-name 
	-engine ncbi
	./

RepeatModeler \
	-engine ncbi \
	-pa 30
	-database $NAME
