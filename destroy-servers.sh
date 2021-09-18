#! /bin/bash

multipass stop ansible1 ansible2 ansible3
multipass delete ansible1 ansible2 ansible3
multipass purge

ssh-keygen -R 192.168.64.14
ssh-keygen -R 192.168.64.15
ssh-keygen -R 192.168.64.16
