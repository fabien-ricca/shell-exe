#!/bin/bash

# On attribut le fchier à une variable pour simplifier plus loin
file="/home/padawan/script/shell-exe/Job9/userlist.csv"

# On démarre la boucle, on attribue les variables pour chaque champs
while IFS="," read -r Id Prenom Nom Mdp Role
do
# Si l'id est un entier on crée un utlisateur avec les données récupérées
    if [ "$Id" -eq "$Id" ] 2>/dev/null;
    then
        useradd -u $Id -p $Mdp ${Prenom,,}
        echo "L'utilisateur $Prenom a bien été ajouté."
# si son role est Admin on l'ajoute au groupe sudo
            if [ ${Role:0:5} = "Admin" ];
            then   
                usermod -aG sudo ${Prenom,,}
            fi
    fi
done<$file


# Afin de lancer le script dés que le fichier userlist.csv est modifié j'ai utiliser INCRONTAB   
# J'ai saisi la commande " incrontab -e "
#un éditeur de texte vim s'est ouvert et j'y ai écrit :

# home/padawan/script/shell-exe/Job9/userlist.csv IN_MODIFY home/padawan/script/shell-exe/Job9/accessrights.sh

# Le script doit être lancé en sudo