#!/bin/bash
i=0
while read line; 
do 
	echo 'linha' $i; 
	i=$((i+1));
	echo '"(RAW_LAND_MULTIC_PRD.'${line^^} 'RAW_LAND_MULTIC_PRD.'${line^^} ')"'
done < test.txt
