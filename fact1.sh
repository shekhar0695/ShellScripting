#!/bin/bash

num=$1
fact=1
while [ $num -gt 1 ];do
	fact=`expr $fact \* $num`
	num=`expr $num - 1`
done
	echo "the fact of $1 is $fact"
