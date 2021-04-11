#! /bin/bash

apt update

# install ansible
apt install software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible

# generate ssh-key
ssh-keygen -t ed25519 -f ~/.ssh/ansible-id-ed25519 -q -N "" -C "ansible-server"



