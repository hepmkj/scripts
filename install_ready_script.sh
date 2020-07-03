#!/bin/bash 

install_git () {
sudo  yum install git
}
 
#Install Docker
install_docker () {
sudo yum check-update
curl -fsSL https://get.docker.com/ | sh
sudo systemctl start docker

#Check  docker
sudo systemctl status docker

sudo systemctl enable docker

}

install_git
install_docker

