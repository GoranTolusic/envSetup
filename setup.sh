#!/bin/bash

# Git, Mysql client and Python
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y git mysql-client
sudo apt-get install -y python3 python3-pip
sudo apt-get install -y php php-cli php-mysql
sudo apt-get install apache2
sudo apt  install curl

# Install visual studio code
sudo snap install --classic code

# Nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc

# node 16.14.0
nvm install 16.14.0

nvm use 16.14.0

# Pg admin
sudo apt-get install -y pgadmin4

# Postman
sudo snap install postman

# Docker
sudo apt-get install -y docker.io
sudo systemctl enable docker

# Docker images
docker pull nginx
docker pull postgres
docker pull mysql
docker pull emqx/emqx

# TODO: shell for running containers 

echo "Development environment setup completed."
