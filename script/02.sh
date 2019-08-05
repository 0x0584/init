#!/bin/sh

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

USER=$1
pgrep -u $USER | while read PID; do kill $PID; done
userdel $USER
