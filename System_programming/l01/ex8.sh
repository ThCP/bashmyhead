#!/bin/bash

if [ $(echo $PATH | grep "/usr/local/bin" -c) -eq 1 ]
then
	echo "directory /usr/local/bin found in PATH variable"
else
	echo "directory not found"
fi
