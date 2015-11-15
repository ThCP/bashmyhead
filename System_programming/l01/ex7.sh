#!/bin/bash

for i in $(ls $1)
do
	cp -r $i $2
	# echo $i
done
