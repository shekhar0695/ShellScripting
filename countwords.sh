#!/bin/bash

echo " line  words"
num=1
while read line 
do
	words=`echo "$line" | wc -w`
	echo "$num  $words"
	num=`expr $num + 1`
done<$1
	
