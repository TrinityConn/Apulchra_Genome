NEW_HOSTNAME="$(hostname)"

sed -i "s/^MYSQLSERVER=.*/MYSQLSERVER=${NEW_HOSTNAME}/" /home/trinity.conn/.conda/envs/annotate/opt/pasa-2.5.3/pasa_conf/conf.txt
