#!/bin/bash 

#use centos7 with docker as base image

install_git () {
sudo  yum install git
sudo yum install bash-completion
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

install_minikube () {
#update 
sudo yum -y update

#Start by installing the required packages:

sudo yum -y install epel-release

sudo yum -y install libvirt qemu-kvm virt-install virt-top libguestfs-tools bridge-utils

#Then, start and enable the libvirtd service:

sudo systemctl start libvirtd

sudo systemctl enable libvirtd

#Confirm the virtualization service is running with the command:

systemctl status libvirtd
sudo usermod -a -G libvirt $(whoami)
sudo systemctl restart libvirtd.service

#Install minikube
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube

#Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl  /usr/local/bin/

#start  minikube
minikube start

}

install_java () {
    echo "Installing java 11 "
    sudo yum update
    sudo yum install java-11-openjdk-devel
    java -version

    sudo yum install maven

}

#install_git
#install_docker
#install_minikube

install_java
