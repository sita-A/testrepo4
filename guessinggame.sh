#!/usr/bin/env bash

function input(){
    echo "enter your choice"
    read number
    check_input $number
}

function check_input(){
    files_count=$(ls |wc -l)
    user_choice=$1
    while [[ $user_choice -ne $files_count ]] 
    do
        if [[ $user_choice -lt $files_count ]]
        then
              echo "The number you entered is Lesser than the expected number"
               input
        else
              echo "The number you entered is greater than the expected number"
              input
        fi
     done
     echo "Congratulations! you won the game and your guess is correct"
}
echo "Let's play the game by enter the number of files present in current directory!"
input