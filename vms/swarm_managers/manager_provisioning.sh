#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update -y
sudo apt-get install -y \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce

sudo groupadd docker
sudo usermod -aG docker vagrant

# for debugging network-connections, an nginx comes handy
sudo apt-get install -y nginx

# make the hostname the content of the nginx-landin-page
# to create some transparency of where our requests go to
sudo echo $(hostname) > /usr/share/nginx/html/index.html
