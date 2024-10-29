#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=100GB
#SBATCH --mail-type=BEGIN,END,FAIL #email you when job starts, stops and/or
#SBATCH --mail-user=trinity.conn@uri.edu #your email to send notifications
#SBATCH --account=putnamlab
#SBATCH -o slurm-%j.out
#SBATCH -e slurm-%j.error

source ~/.bashrc 

conda activate annotate
module load MariaDB

cd /data/putnamlab/tconn/mysql

apptainer instance start --bind ${HOME} \
    --bind ${PWD}/mysql/var/lib/mysql/:/var/lib/mysql \
    --bind ${PWD}/mysql/run/mysqld:/run/mysqld \
    ./mysql.simg mysql

apptainer run instance://mysql

./data/putnamlab/tconn/scripts/update_mysql_host.sh 

funannotate update -i /data/putnamlab/tconn/ --cpus 20 --max_intronlen 100000 --pasa_db mysql --memory 300GB



apptainer instance stop mysql
