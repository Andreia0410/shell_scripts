#!/bin/bash
i=0
chr="*"
read var
while [ $i -lt $var ];
do
	aux=''
	j=0
	while [ $j -le $i ];
	do
		
		aux="$aux""$chr "
		j=$((j+1))
	done
	i=$((i+1))
	echo "$aux"
done


