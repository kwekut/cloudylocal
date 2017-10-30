#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL
192.168.33.10  mgmt
192.168.33.11  master1
192.168.33.21  slave1
192.168.33.22  slave2
192.168.33.23  slave3
EOL

