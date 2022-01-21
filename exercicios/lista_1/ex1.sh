#!/bin/bash
read -p "informe o primeiro valor "  val1
read -p "informe o segundo valor: " val2
soma=$((val1 + val2))
echo "a soma dos valores passados é igual a" $soma
echo "A soma de $val1 + $val2 = $(expr $val1 + $val2)"