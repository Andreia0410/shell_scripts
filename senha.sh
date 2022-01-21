#!/bin/bash
###################
#
#
#descrição: código para ler um input do usuário e dar boas vindas 
#ler também uma senha e omitir os caracteres que serão digitados
#
###################


read -p 'Informe o seu nome: ' nome
echo "olá usuário" $nome
read -s -p 'Informe uma senha: ' senha
echo $senha > senha.txt
echo "sua senha foi gravada no arquivo"
