#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH --nodes=1 --ntasks-per-node=1
#SBATCH --mem=5GB
#SBATCH --mail-type=BEGIN,END,FAIL #email you when job starts, stops and/or fai$
#SBATCH --mail-user=trinity.conn@uri.edu #your email to send notifications
#SBATCH --account=putnamlab
#SBATCH -o slurm-%j.out
#SBATCH -e slurm-%j.error

# Define program name
PROGNAME=$(basename $0)



cd /data/putnamlab/tconn/funannotate_db

# Define stop mysqldb
stop_mysqldb() { singularity instance stop mysqldb; }

# Set trap to ensure mysqldb is stopped
trap "stop_mysqldb; exit 130" SIGHUP SIGINT SIGTERM

# Define error handler
error_exit()
{
    stop_mysqldb
        echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
        exit 1
}

# Set some vars
export SINGULARITY_BINDPATH=/data/putnamlab/tconn/funannotate_db
export SINGULARITYENV_PASACONF=/home/trinity.conn/.conda/envs/annotate/opt/pasa-2.5.3/pasa_conf/pasa.CONFIG.template
sed -i "s/^MYSQLSERVER.*$/MYSQLSERVER=${HOSTNAME}:${PORT}/" ${SINGULARITYENV_PASACONF}
export SINGULARITYENV_PASACONF=/home/trinity.conn/.conda/envs/annotate/opt/pasa-2.5.3/pasa_conf/conf.txt
sed -i "s/^MYSQLSERVER.*$/MYSQLSERVER=${HOSTNAME}:${PORT}/" ${SINGULARITYENV_PASACONF}
export SINGULARITYENV_PASACONF=/home/trinity.conn/.conda/envs/annotate/opt/pasa-2.5.3/pasa_conf/pasa.CONFIG.template
sed -i "s/^MYSQLSERVER.*$/MYSQLSERVER=${HOSTNAME}:${PORT}/" ${SINGULARITYENV_PASACONF}
export SINGULARITYENV_PASACONF=/home/trinity.conn/.conda/envs/annotate/opt/pasa-2.5.3/pasa_conf/conf.txt
sed -i "s/^MYSQLSERVER.*$/MYSQLSERVER=${HOSTNAME}:${PORT}/" ${SINGULARITYENV_PASACONF}


cd /data/putnamlab/tconn/funannotate_db/mysql

# Start Database
PORT=$(singularity exec --writable-tmpfs -B db/:/var/lib/mysql mariadb.sif grep -oP '^port = \K\d{4}' /etc/my.cnf | head -1)

# Update PASA DB config
echo $PORT

echo -e "${HOSTNAME}:${PORT}" >> ./portinfo.txt
singularity exec --writable-tmpfs -B db/:/var/lib/mysql mariadb.sif /usr/bin/mysqld_safe
stop_mysqldb
exit 0

