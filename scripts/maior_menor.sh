#/bin/bash
read -p "Informe dois números separados por espaço" n1 n2

if [ $n1 -eq $n2 ]
then
    echo "Os números são iguais"
elif [ $n1 -gt $n2 ]
then
    echo "O primeiro valor é maior que o segundo"
else
    echo "O segundo valor é maior que o primeiro"
fi