#!/bin/sh
sudo -u admin ssh root@212.17.192.123 shutdown -h now
sleep 60

MASTER_DB_USER=''
MASTER_DB_PASSWD=''
MASTER_DB_PORT=3306
MASTER_DB_HOST=''
MASTER_DB_NAME=''

SQL_Query="insert into status_backup values('', NOW() ,'','');"

MYSQL -u$MASTER_DB_USER -p$MASTER_DB_PASSWD -P$MASTER_DB_PORT -h$MASTER_DB_HOST -D$MASTER_DB_NAME <<EOF 
$SQL_Query
EOF