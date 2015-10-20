#!/bin/bash

# Read from stdin a set of strings, stopping when the string is “END”. Copy and 
# number each line on stdout.

read i
line_counter=0
while [ $i != "END" ]
do
	((line_counter++))
	echo $line_counter $i
	read i
done
