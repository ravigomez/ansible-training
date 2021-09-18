#! /bin/bash

# STEP-1: update the system
sudo  apt update
sudo apt dist-upgrade -y

#activate auto update security packages
sudo apt install unattended-upgrades
sudo dpkg-reconfigure --priority=low unattended-upgrades  # Select YES

## create .ssh folder
mkdir ~/.ssh && chmod 700 ~/.ssh

# from your local machine ssh target machine:
### if you have priv/pub key configured, skip this.

# for linux/unix
ssh-keygen -b 4096

##from your local machine, copy the .pub file over ssh to the targets 
scp ~/.ssh/id_rsa.pub ansible@{server ip}:~/.ssh/authorized_keys

#TODO: Update the ~/hosts file with the path of your private key file
