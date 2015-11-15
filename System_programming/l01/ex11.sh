#!/bin/bash

if [ ! -d "$1" ] # Checks if the first parameter is a directory
then
	echo "Folder does not exist"
	exit
fi

if [ $2 -ne $2 ] # Checks if the second parameter is a number
then
	echo "Not a valid size"
	exit
fi

if [ $2 -lt 0 ] # Checks if the number is positive
then
	echo "Not a valid size"
	exit
fi

find $1 -type f -size +$2c -perm -a+r # In case both parameters are correct, perform the search




