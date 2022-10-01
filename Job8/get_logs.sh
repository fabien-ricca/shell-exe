#!/bin/bash

# On crée le fichier avec le nom qui inclue la date sous le bon format
file="number_connection-$(date +%d-%m-%Y-%H:%M)"

# On récupère les connexions, on compte les lignes et on les met dans le fichier
last padawan | wc -l > $file

# On vérifie que le répertoir Backup/ existe, sinon on le crée
if [ ! -d Backup/ ];
then
    mkdir /home/padawan/script/shell-exe/Job8/Backup/
fi

# On crée l'archive du fichier dans le repertoire Backup/ et on efface le fichier d'origine
tar -cf /home/padawan/script/shell-exe/Job8/Backup/$file.tar $file
rm $file

# Afin de lancer le script toutes les heures j'ai utilisé CRON   
# J'ai saisi la commande " crontab -e "
# un fichier texte s'est ouvert et j'y ai écrit à la dernière ligne :

# 01 * * * * bash /home/padawan/script/shell-exe/Job8/get_logs.sh
