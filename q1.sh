#!/bin/bash
n=`wc -l < $1`
mid=0
rem=`expr $n % 2`
if [ $rem -eq 0 ]
then 
	mid=`expr $n / 2`
fi
if [ $rem -ne 0 ]
then 
	x=`expr $n + 1`
	mid=`expr $x  / 2`
fi
awk -v var=$mid '{if(NR==var) print $0}' $1
