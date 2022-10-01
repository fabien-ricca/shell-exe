#!/bin/bash

file="/home/padawan/script/shell-exe/Job9/userlist.csv"

while IFS="," read -r Id Prenom Nom Mdp Role
do
    if [ "$Id" -eq "$Id" ] 2>/dev/null;
    then
        userdel ${Prenom,,}
        echo "L'utilisateur $Prenom a bien été supprimé !"
    fi
done<$file