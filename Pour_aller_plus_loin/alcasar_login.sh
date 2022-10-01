#!/bin/bash

##################################################################

######################    JOB PAS TERMINE    #####################
curl -X POST -F 'username=$1' -F 'password=$2' https://alcasar.laplateforme.io/intercept.php

