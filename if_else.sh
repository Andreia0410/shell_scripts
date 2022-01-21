#!/bin/bash
read a b
if [ $a -eq $b ]
then
	echo "numeros iguais"
elif [ $a -gt $b ]	
then
	echo "primeiro é maior"
else
	echo "segundo maior"
fi	
