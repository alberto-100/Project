all: readme.md

readme.md: guessinggame.sh
	echo "Guessing Game" > README.md
	echo "\nCreated on:" >> README.md
	date >> README.md
	echo "\nGuessinggame.sh line count:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
