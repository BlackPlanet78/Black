all: README.md
README.md: guessinggame.sh
	echo "## The Guessing Game" > README.md
	echo "Unix Workbench Course Assigment" >> README.md
	echo "\n**Make was run at**: " >> README.md
	date >> README.md
	echo "\n**Number of lines in guessinggame.sh:** " >> README.md
	cat guessinggame.sh | wc -l >> README.md
	
clean:
	rm README.md

