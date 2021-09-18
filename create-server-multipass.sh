#! /bin/bash

if [ ! $1 ]; then
  echo "Provide a name"
  exit 1
fi
psw=`cat password.txt`
multipass launch --name $1
multipass exec $1 -- sudo sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
multipass exec $1 -- sudo systemctl restart sshd
multipass exec $1 -- sudo useradd -m -p $psw -s /bin/bash ansible
multipass exec $1 -- sudo usermod -aG sudo ansible


