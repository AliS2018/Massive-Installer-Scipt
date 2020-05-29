#!/bin/bash

##Add Key for a Server and Repository of a Docker

apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

##Add Docker Repository

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt install docker-ce -y
##Install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo "Relaunching the Docker Management System Interface a.k.a (DMSI)..."
sleep 3
        cd ~/temp_data01/Mass-Installer-Script/DockerManager/
       ./Launcher.sh
