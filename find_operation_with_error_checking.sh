#!/bin/bash

# Write a script that given two parameters from the command line, the first as a directory
# name and the second as the size in bytes of a file, visualizes all ordinary files in the
# specified directory that can be read (read permission enabled) and with a size greater
# than the specified one. Please also verify that the given parameters are correct.

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




