#! /bin/bash

psw=`cat password.txt`

ssh -o StrictHostKeyChecking=no -l $1@$2 <<EOF                                          
sudo useradd -m -p "$psw" -s /bin/bash ansible
sudo adduser ansible sudo
EOF

ssh-copy-id -i ~/.ssh/ansible-id-ed25519.pub ansible@$2

