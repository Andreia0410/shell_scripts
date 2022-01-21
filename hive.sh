#!/bin/bash

hdfs dfs -put origem destino
rm -f origem
bash arq.hql
hdfs dfs -get origem destino

