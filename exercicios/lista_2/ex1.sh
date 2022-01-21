#!/bin/bash
HORA=$(date +%H)
MIN=$(date +%M)


echo "primeira parte do código"
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then 
	echo "BOM DIA"
elif [ $HORA -ge 06 -a $HORA -lt 18 ]
then
	echo "BOA TARDE"
else
	echo "BOA NOITE"
fi


echo "segundo parte do código"

if [ $HORA -ge 12 ]
then
	AMPM=PM
else
	AMPM=AM
fi	

if [ $HORA -gt 12 ]
then
	HORA=$(expr $HORA - 12)
fi

echo 0$HORA":"$MIN $AMPM
