#!/bin/bash
#===============================================
#Relatório da Máquina: linux-debian
#Data/Hora: sáb ago 19 14:38:44 -03 2017
#===============================================
#Máquina Ativa desde: 2017-08-19 14:03:28
#Versão do Kernel: 4.9.0-3-amd64
#CPUs:
#Quantidade de CPUs/Core: 4
#Modelo da CPU: Intel(R) Core(TM) i3 CPU M 370 @ 2.40GHz
#Memória Total: 7857 MB
#Partições:
#Sist. Arq. Tam. Usado Disp. Uso% Montado em
#/dev/sda1 23G 5,0G 17G 23% /
#/dev/sda8 255G 14G 229G 6% /home
#/dev/sda5 9,2G 650M 8,0G 8% /var
#/dev/sda7 1,9G 6,3M 1,7G 1% /tmp
kernel=$(uname -r)
hostname=$(hostname)
cpuno=$(cat /proc/cpuinfo |grep "model name"|wc -l)

echo "relatório da máquina $hostname"
echo "data/hora : $(date)"
echo "$kernel"
echo "informações sobre a cpu $cpuno"