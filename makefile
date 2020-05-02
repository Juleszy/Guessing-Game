README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "make was run at:" >> README.md

	date >> README.md
	echo "" >> README.md
	echo "guessinggame.sh contains this many lines of code:" >> README.md
	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

