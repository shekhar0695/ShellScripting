#!/bin/bash

line=`cat $1 | wc -l`
while [ $line -gt 0 ];do
	
	head -$line $1 | tail -1 >> rev_file
	line=`expr $line - 1`
done

cat rev_file;rm rev_file	
