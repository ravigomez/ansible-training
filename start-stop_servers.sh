#! /bin/bash


S=echo multipass list | awk '{if($1 ~ /^ansible/) print $2;}' | fmt

STATUS=($S)

echo $STATUS

read -p "The servers are running. Do you want to STOP them? [y/n] " $RESP

if [ $RESP -eq "y"]; then
  multipass stop ansible1 ansible2 ansible3
fi
