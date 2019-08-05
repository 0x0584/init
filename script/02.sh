#!/bin/sh

if [ $(id -u) -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ $# -ne 1 ]
  then echo 'Please pass a user'
  exit
fi

USER=$1
pgrep -u $USER | while read PID; do kill $PID; done
userdel $USER
