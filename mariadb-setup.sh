#!/bin/bash
set -e

sudo apk add mariadb mariadb-client

sudo /etc/init.d/mariadb setup

sudo rc-service mariadb start

sudo rc-update add mariadb default

tar xvf sampledata.tar

sudo mysql -e "source /vagrant/sample-data.sql"

mysql

