#!/bin/bash

# For every command I check whether the return value is 0 or not. If it is not 0 
# this means that an error when creating the folder occurred. Such errors may be 
# due to a folder being non existent or to permissions denied (e.g. when trying
# to write inside a folder without the w permission).

# I also redirect the stderr to /dev/null in order to have only the error 
# message I specify.


mkdir $1 2> /dev/null
if [ $? -ne 0 ]
then
	echo "Error in creation of folder $1"
	exit # I exit after every error.
fi

mkdir $1/$2 2> /dev/null
if [ $? -ne 0 ]
then
	echo "Error in creation of folder $1/$2"
	exit	
fi


mkdir $1/$2/branches 2> /dev/null
if [ $? -ne 0 ]
then
	echo "Error in creation of folder $1/$2/branches"
	exit	
fi


mkdir $1/$2/tags 2> /dev/null
if [ $? -ne 0 ]
then
	echo "Error in creation of folder $1/$2/tags"
	exit
fi


mkdir $1/$2/trunk 2> /dev/null
if [ $? -ne 0 ]
then
	echo "Error in creation of folder $1/$2/trunk"
	exit
fi


