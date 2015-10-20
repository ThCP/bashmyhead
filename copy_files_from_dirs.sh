#!/bin/bash

# Write a script able to read two parameters from the command line. The two
# parameters represent the names of two directories. Copy all the files from the 
# first directory to the second.

for i in $(ls $1)
do
	cp -r $i $2
	# echo $i
done
