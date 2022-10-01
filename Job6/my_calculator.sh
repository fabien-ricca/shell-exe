#!/bin/bash

# Si le $2 est un X alors on aditionne $1 et $3
if [ $2 = "x" ];
then    
    sum=$(( $1 * $3 ))

# Sinon, si le $2 est un + alors on multiplie $1 et $3
elif [ $2 = "+" ];
then   
    sum=$(( $1 + $3 ))

# Sinon, si le $2 est un - alors on soustrait $1 et $3
elif [ $2 = "-" ];
then
    sum=$(( $1 - $3 ))

# Sinon, si le $2 est un / alors on divise $1 par $3
elif [ $2 = "/" ];
then
    sum=$(( $1 / $3 ))
fi

# On affiche le résultat du calcul
echo "le résultat est $sum"