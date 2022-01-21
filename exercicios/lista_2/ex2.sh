#!/bin/bash
#script que faz backup

#cria um diretório de backup

#variável que contem o path destino do backup
#concatena o diretório do script com "Backup"
DIR_DEST=$(dirname "$0")/Backup


#checagem para saber se existe o diretório de backup, senão existir cria
if [ ! -d $DIR_DEST ]
then
	echo "Criando diretório de backup"
	mkdir -p $DIR_DEST
fi


#busca se existe algum arquivo de backup criado nos ultimos 7 dias
DAYS7=$(find $DIR_DEST -ctime -7 -name backup_home\*tgz)

if [ "$DAYS7" ]
then
	echo "Já foi gerado backup nos ultimos 7 dias"
	echo -n "Deseja continuar? (N/s): "
	read -n1 CONT
	echo 
	if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]
	then
		echo "Backup abortado"
		exit 1
	elif [ "$CONT" = S -o "$CONT" = s ]
	then		
		echo "Será criado mais um backup aguarde...."
	else
		echo "opção inválida"
		exit 2
	fi
fi	


echo "Criando backup...."
ARQ="backup_home_$(date +%Y%m%d%H%M%S).tgz"
tar zcvpf $DIR_DEST/$ARQ --absolute-names exclude=$DIR_DEST $(dirname "$0")/*

echo "Backup Concluído com sucesso"
