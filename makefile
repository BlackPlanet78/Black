all: README.md
README.md: guessinggame.sh
	echo "## The Guessing Game" > README.md
	echo "Unix Workbench Course Assigment*" >> README.md
	echo "\n**Description**: Create a bash executable guessing game. This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
	echo "\n**Creation date**: " >> README.md
	date >> README.md
	echo "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md
	
clean:
	rm README.md

