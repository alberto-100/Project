#!/usr/bin/env bash
# File: guessinggame.sh

correct=0
filesindirectory=$(ls -1A | wc -l)
intRE='^[0-9]+$'

function guess {
    echo "How many files are in the current directory? Enter an integer to guess."
    read guess
}

guess

while [[ $correct -eq 0 ]]
do
    if ! [[ $guess =~ $intRE ]]
    then
        echo "Invalid entry:  ${guess} provided.  Please enter a valid integer."

        guess
    else
        if [[ $guess -eq filesindirectory ]]
        then
            correct=1
        else
            if [[ $guess -lt filesindirectory ]]
            then
                echo "Your guess is too low, please try again."
            else
                echo "Your guess is too high, please try again."
            fi

            guess
        fi
    fi
done

echo "Congratulations!"
echo "You managed to guess the number of files!"
