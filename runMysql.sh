#!/bin/bash

if sudo docker volume ls | grep -q "mysql_data"; then
    echo "Volume already exists. Skipping creating new volume"
else
    echo "Volume not found. Creating new..."
    sudo docker volume create mysql_data
fi

sudo docker run --name mysql -e MYSQL_ROOT_PASSWORD=1234 -p 3306:3306 -v mysql_data:/var/lib/mysql -d mysql
sleep 3
echo "MySql IP:"
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mysql
echo "MySql port:"
echo 3306 #source from env
echo "MySql user:"
echo "root"
echo "MySql password:"
echo 1234 #source from env

#todo source .env port and password