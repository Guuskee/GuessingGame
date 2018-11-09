README.md:	guessinggame.sh
	echo "#The Guessing Game" > README.md
	echo "##make last run on:" >> README.md
	date +"%T %D" >> README.md
	echo "##Amount of lines of code used:" >> README.md
	(wc -l < ./guessinggame.sh) >> README.md
	echo "*Run the script to begin the game*" >> README.md
	

clean:
	rm README.md
