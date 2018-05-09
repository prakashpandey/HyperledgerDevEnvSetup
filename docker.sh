#!/bin/bash

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" 

sudo apt update 

#sudo apt install -y docker-ce

echo "=======>Installing docker"
sudo apt install docker.io

echo "----------------------------------------------------------------------------------------------------------------------------------------" 
echo "=======>Installing docker-compose"
sudo apt install docker-compose
