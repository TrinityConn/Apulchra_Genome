# Working file to describe the workflow of annotating the Acropora pulchra genome 

Funannotate Github: https://github.com/nextgenusfs/funannotate 

Funannotate requires a soft-masked genome file. A.pulchra genome will need to be run with Repeat Modeler and Repeat Masker to identify and mask repeat regions. 

## Repeat Modeler 

Ok so the first step is running Repeat Modeler. Repeat Modeler and Repeat Masker are both used. Repeat Modeler discovers TE. We will use Repeat Modeler to identify likely TEs and then RepeatMasker to identify those in the assembled genome. 

### easy-start repeat modeler scripts 

```
#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=30
#SBATCH --mem=240GB
#SBATCH --time=48:00:00
#SBATCH --job-name=repeatmodel

cd ~
source ~/.bashrc
conda activate repeatmasker

cd /$PATH
BuildDatabase \
	-name $NAME \
	-engine ncbi \
	./$OUTFILE
RepeatModeler \
	-engine ncbi \
	-pa $ \
	-database $NAME

```

The first step of the Repeat Modeler process is to 
