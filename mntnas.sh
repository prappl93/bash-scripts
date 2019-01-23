#!/bin/bash

nasip=10.1.1.5
muname=$(id -un)
muid=$(id -u)

if [[ ! -e /home/$muname/.creds ]]; then
	echo error! /home/$muname/.creds does not exist!
	echo please create this file and run chmod 600 on it
	echo this file will need the following lines it in:
	echo username=\(your username\)
	echo password=\(your password\)
	exit -1
fi

if [[ ! -e /home/$muname/nas ]]; then
	echo /home/$muname/nas does not exist, creating...
	mkdir /home/$muname/nas
fi

if mount | grep $nasip > /dev/null; then
	echo /home/$muname/nas already mounted, exiting
	exit -2
fi

sudo mount -t cifs //$nasip/$muname -o uid=$muid,credentials=/home/$muname/.creds /home/$muname/nas
