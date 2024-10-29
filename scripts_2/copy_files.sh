#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=20
#SBATCH --mem=160GB
#SBATCH --time=48:00:00
#SBATCH --job-name=copy


cp /data/putnamlab/jillashey/Apul_Genome/assembly/data/m84100_240128_024355_s2.hifi_reads.bc1029.fasta /data/putnamlab/tconn/mito/
