#!/usr/bin/env bash
# File: guessinggame.sh

function countamount {
echo $(ls -l | grep '^-' | wc -l)
}

function prompt {
read -p $'-- How many files are in the current directory? --\n' guess
}

function wronghow {
if [[ $guess =~ [^0-9] ]]
then echo "Try entering an actual number"
elif [[ $guess -lt $amt ]]
then echo "The answer is higher than your guess"
elif [[ $guess -gt $amt ]]
then echo "The answer is lower than your guess"
fi
}

amt=$(countamount)
prompt
while [[ $guess -ne $amt ]]
do
wronghow
prompt
done
echo "Well done, champ!"
