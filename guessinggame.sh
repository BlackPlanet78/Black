#!/usr/bin/env bash

echo "The guessing game"
echo "This game will keep asking you how many files are in the current directory."
echo "So if you are bad at guessing, you will be here for a long time :-)"

function numberOfFiles {
	files=$(ls -l | wc -l)
}

function guess {
	echo "How many files are there in the current directory?"
	read number
}

numberOfFiles
guess

while [[ $number -ne $files ]]
do
	if [[ $number -lt $files ]] 
	then
		echo "The number of files in the directory is higher than your guess $number."
	else
		echo "The number of files in the directory is lower than your guess $number."
	fi
	guess
done

echo "Congratulations! $number is the correct answer!"
