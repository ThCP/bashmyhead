#!/bin/bash

b=0 # counter for the base loop
h=0 # counter for the height loop

base=$[$2-2]
height=$[$1-2]

# write the first row
s="+"
while [ $b -lt $base ]
do
	s=$s"-"
	((b++))
done
s=$s"+"
echo $s 

# write the rows in the middle of the rectangle
b=0
while [ $h -lt $height ]
do
	s="|"
	j=0
	while [ $j -lt $base ]
	do
		s=$s'.' 
		((j++))
	done
	s=$s"|"
	((h++))
	echo $s | tr "." " " # tr is needed because otherwise the shell collapses the whitespaces
done

# write the last row
s="+"
while [ $b -lt $base ]
do
	s=$s"-"
	((b++))
done
s=$s"+"
echo $s

