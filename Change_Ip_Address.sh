#!/bin/sh
Cluster="/etc/mysql/mariadb.conf.d/galera.cnf"
Maxscale="/etc/maxscale.cnf"

        echo PLEASE ENTER PREVIOuS IP :
	read PREVIP
        echo PLEASE ENTER NEW IP :
        read NEWIP

if [ -e "$Cluster" ]; then
    echo "$Cluster exists as a file"
	sed -i 's/'$PREVIP'/'$NEWIP'/g' /etc/mysql/mariadb.conf.d/galera.cnf
elif [ -e "$Maxscale" ]; then
    echo "$Maxscale exists as a file"
        sed -i 's/'$PREVIP'/'$NEWIP'/g' /etc/maxscale.cnf
fi
