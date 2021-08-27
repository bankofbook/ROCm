#!/bin/bash

for s in $(ls [0-9]*.sh | sort -n)i
do 
    echo $s ; 
    bash $s &>log; 

    if [ $? -eq 0 ]
    then
       echo "success"
    else
       break
    fi
done

