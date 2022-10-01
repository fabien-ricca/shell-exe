#!/bin/bash

# Si le paramère1 est "Hello" alors on affiche le message "Bonjour..."
if [ $1 = "Hello" ];
then
    echo "Bonjour, je suis un script !"

# Si le paramère1 est "Bye" alors on affiche le message "Au revoir..."
elif [ $1 = "Bye" ];
then 
    echo "Au revoir et bonne journée"

# Sinon on affiche "C'est pas..."
else
    echo "C'est pas trés poli de ne pas dire Hello ou Bye..."
fi