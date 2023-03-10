#!/bin/bash

num=1

while read line;do
	status=`expr $num % 2`
	if [ $status -eq 0 ];then
		echo "$num.$line" >> even_file
	else
		echo "$num.$line" >> odd_file
	fi
	num=`expr $num + 1`

done < $1

echo "======odd lines====="
cat odd_file;rm odd_file
echo "=====even lines====="
cat even_file;rm even_file

