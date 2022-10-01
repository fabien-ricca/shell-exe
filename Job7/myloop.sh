#!/bin/bash

nbr=1

# Méthode1 avec boucle while
while ((nbr!=11))
do
    echo "Je suis un script qui arrive à faire une boucle $nbr"
    ((nbr+=1))
done

# Méthode 2 avec une boucle for
for ((a=1 ; a!=11 ; a+=1))
do  
    echo "Je suis un script qui arrive à faire une boucle $a"
done