#!/bin/bash

#################################
#
#
#descrição: usando parametros na chamada de um shell script
#
#forma de uso: bash nome.sh param1 param2 .... paramn
#
#################################

echo "o script $0 recebeu um número $# de parâmetros"
echo "parametros recebidos foram: $*"

echo "Parâmetro \$1 = $1"
echo "Parâmetro \$2 = $2"

