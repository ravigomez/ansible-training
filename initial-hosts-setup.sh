#! /bin/bash

sudo  apt update
sudo apt dist-upgrade -y

sudo apt install unattended-upgrades
sudo dpkg-reconfigure --priority=low unattended-upgrades  # click YES

sudo adduser ansible
sudo usermod -aG sudo ansible

## check if PasswordAuthentication yes 
sudo vim /etc/ssh/sshd_config
# restart the service if changed
sudo systemctl restart sshd

## login as new user ravigomez

mkdir ~/.ssh && chmod 700 ~/.ssh

### if you have priv/pub key configured, skip this.

# on your local machinei

# for linux/unix
ssh-keygen -b 4096

