#!/bin/bash

# Git, Mysql client, python, curl, apache, php & composer
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y git mysql-client
sudo apt-get install -y python3 python3-pip
sudo apt install php-cli
sudo apt-get install apache2
sudo apt  install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer


# Install visual studio code
sudo snap install --classic code

# Nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# node 16.14.0
nvm install 16.14.0

nvm use 16.14.0

# Pg admin
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4

# Postman
sudo snap install postman

# Docker
sudo apt-get install -y docker.io
sudo systemctl enable docker

# Docker images
sudo docker pull nginx
sudo docker pull postgres
sudo docker pull mysql
sudo docker pull emqx/emqx
sudo docker pull redis


# TODO: shell for running containers 

echo "Development environment setup completed."
