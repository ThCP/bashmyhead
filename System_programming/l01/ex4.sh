#!/bin/bash

i=1
while [ $i -le 15 ]
do
	touch "xxx$i"
	((i++))
done

ls xxx* | sort -V
ls xxx* | sort -r -V

ls xxx* | sort -V > list.txt

