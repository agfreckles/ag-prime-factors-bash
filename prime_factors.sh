#! /bin/bash

echo "Enter an integer" # accept input

read n # readin the value of user input
i=0 # set i = 0


while [ "$i" -le "$n" ] # main while loop
do
    c=0
    if [ "`expr $n % $i`" == 0 ] 
    then
        j=1
        while [ $j -le $i ] # while loop within main
        do
            if [ `expr $i % $j` == 0 ]
            then
            c=$(($c+1))
            fi
        j=$(($j+1))
        done
        if [ "$c" == 2 ]
        then
            echo "$i"
        fi
    fi
    i=$((i+1))
done

