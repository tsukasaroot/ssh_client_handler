#!/bin/bash

if [ -z $1 ]
then
	echo "No parameters given"
	exit
fi

command=$(cat ssh_address.address | grep -w $1)
echo "Looking for $1..."

if [ ! -z "$command" ]
then
	IFS=' ' read -r id login <<< "$command"
	#echo $id." foundn logging into SSH now..."
	$login
else
	echo "invalid website name"
fi
