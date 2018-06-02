#!/usr/bin/env bash 

echo "[Welcome to Guessing game v0.1]" 

function ask { 
	echo "Unesite broj fajlova u trenutnom direktorijumu:" 
	read guess 
    files=$(ls -1 | wc -l) 
} 

ask 

while [[ $guess -ne $files ]] 
do 
	if [[ $guess -lt $files ]] 
	then 
		echo "Previse mali !" 
	else 
		echo "Previse veliki !" 
	fi 
	ask 
done 

echo "Cestitamo! Ovo su fajlovi:" 
echo "---" && ls -1 
