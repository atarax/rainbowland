#!/bin/bash

# execute this file to prepare the host which runs the vhosts later

# install vagrant
sudo apt-get update
sudo apt-get install vagrant

# add backports-repo, needed vor virtualbox
echo "deb http://ftp.debian.org/debian stretch-backports main" | sudo tee /etc/apt/sources.list.d/backports.list > /dev/null

# add virtualbox-repo
echo "deb http://download.virtualbox.org/virtualbox/debian stretch contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list > /dev/null

# add certificate
curl -O https://www.virtualbox.org/download/oracle_vbox_2016.asc
sudo apt-key add oracle_vbox_2016.asc

# install virtualbox
sudo apt-get update
sudo apt-get install virtualbox-5.1


