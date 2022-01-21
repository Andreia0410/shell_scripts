#!/bin/bash

#usando for com varias variáveis
echo "exemplo com variáveis"
test=5
for numero in 1 2 3 4 $test
do 
	echo "o número é $numero"
done	

#usando arquivo, vai exibir todos os arquivos encontrados que tenham nome correspondente ao que esta apos o in
echo "exemplo com arquivo, buscando todos os arquivos. um ls com filtro"
for i in p*
do
	echo "o aluno é $i"
done

#usando um iteravel
echo "usando o comando seq"
for i in $(seq 1 10)
do 
	echo "o número é $i"
done


#usando o conteudo do arquivo
echo "trazendo o conteudo do arquivo"
i=1
for nome in $(cat alunos.txt)
do 
	echo "O valor da linha $i é $nome"
	i=$((i + 1))
done


#forma semalhante ao C
echo "faço com sintaxe da linguagem C"
for ((i = 0; i <= 10; i++))
do
	echo "o número é $i"
done	
