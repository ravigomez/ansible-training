#! /bin/bash

psw=`cat password.txt`

ssh -o StrictHostKeyChecking=no -l $1@$2 "sudo useradd -m -p $psw -s /bin/bash ansible"

ssh-copy-id -i ~/.ssh/ansible-id-ed25519.pub ansible@$2

