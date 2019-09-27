#!/bin/bash
service mysql start

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'hive'@'localhost' IDENTIFIED BY 'james'; FLUSH PRIVILEGES;"
mysql -u root -e "drop database IF EXISTS hive;"
mysql -u root -e "create database hive;"
mysql -u root -e "use hive; source hive/scripts/metastore/upgrade/mysql/hive-schema-3.0.0.mysql.sql;"

# To start the hive metastore service:
/opt/hive/bin/start-metastore
