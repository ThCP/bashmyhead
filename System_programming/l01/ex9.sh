#!/bin/bash

read i
line_counter=0
while [ $i != "END" ]
do
	((line_counter++))
	echo $line_counter $i
	read i
done
