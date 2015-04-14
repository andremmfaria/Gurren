# Gurren

###Title:
Generic Typing Game
(Codename Gurren)

###Author:
@andremmfaria

###Actual Version:
V0.5

###Proximate Size:
662 Kb

###About the game
	This is a simple words game.
	As the game opens it prompts the user to input the number of rounds he/she wants to play. Then the program starts a timer and shows word after word for the user to input. If the input was correct a "congratulations" message is shown, else a "bad word" message is shown.
	After all the rounds, the timer stops and the score is given to the player. The score format is:
	(Correct words - Incorrect words)/(Duration of the game)

###Architecture
	This is the architecture of the code. This is always reflecting the latest version of the code.
|main.lua|
|
|--|preparaDicionario.lua|
|
|--|constroiListaPalavras.lua|
|  |
|  |--|dicionario.lua|
|
|--|rodada.lua|
|

###Coding History

####Before 2015-04-01
	Found out about a assignment that i have to do any progam i'd like since its in Lua and obeys a set of rules. I have started learning Lua from roberto's book, a little rought aroun the edges but its ok to read on my way to work and on my way home

####2015-04-01
	Started coding today, im using eclipse on windows as the platform. Lua is my first interpreted language, so it's a little troublesome, but i feel like getting better. Planning to do all the functions in main.lua to save time and performance. Still dont have a dictionary, going to search for it later.
	Files written:
	*main.lua
		*main()
			*Loads words into a table
			*Shows on screen

####2015-04-05
	Roberto's book is very good. For a PUC professor at least. Having a good time coding in Lua, this language is very easy to learn and has a lot of awesome features, these tables are very useful. Found a dictionary, it's in portuguese but the program main language is portuguese so it's not a problem. Having trouble reading from a relative path, don't know what's happening but im going to find out.
	Files written:
	*main.lua
		*main()
			*Opens the file "Dicionario.txt" and creates a file object(file)
			*Prompts the user for a number of rounds(num)
			*Calls function constroiListaPalavras(file, num) => hash
			*Prints hash
		*constroiListaPalavras(file, num)
			*Pics random numbers(rand), between 1 and 29858(MAX), num times
			*Iterates over the file filling a table(hash) with the strings from the file
			*Returns hash
	*Dicionario.txt

####2015-04-10
	Didn't finish Roberto's book, im in need to be more productive and i have started looking for reference in Lua site just when needed. Moved from windows to linux to solve the relative path problem, coding on ZeroBrane Studio now and needless to say, the feel to work on linux is incomparably better. Starting to consider loading all the dictionary to the memory since it's not that big as i though at first.
	Files written:
	*main.lua
		*main()
			*Opens the file "Dicionario.txt" and creates a file object(file)
			*Prompts the user for a number of rounds(num)
			*Calls function constroiListaPalavras(file, num) => hash
			*Gets initial time with os.time()(tst)
			*Calls round(hash, num) => points
			*Gets final time with os.time()(tend)
			*points = points/(tend-tst)
			*Prints points
		*constroiListaPalavras(file, num)
			*Pics random numbers(rand), between 1 and 29858(MAX), num times
			*Iterates over the file filling a table(hash) with the strings from the file
			*Returns hash
		*round(hash, num)
			*Creates a points counter(points) that starts at 0
			*Does the following num times
				1.Prints "Palavra" and the current word from hash
				2.Prompts the user for the word
				3.Compares the user input with the current hash word
				4.If the user input was correct points+=1000 else Points-=1000
			*returns points
	*Dicionario.txt
		*Contains the dictionary data

####2015-04-11
	Gave up from the relative path problem, loading all the words on memory on form of a table, located in dicionario.lua file. Finally pushed project to one github repository, for now its broken.
	Files written:
	*main.lua
		*main()
			*Prompts the user for a number of rounds(num)
			*Calls function constroiListaPalavras(dic, num) => hash
			*Gets initial time with os.time()(tst)
			*Calls round(hash, num) => points
			*Gets final time with os.time()(tend)
			*points = points/(tend-tst)
			*Prints points 
		*constroiListaPalavras(dicionario, num)
			*Pics random numbers(rand), between 1 and 29858(MAX), num times
			*Iterates over the dicionario table filling a table(hash) with the strings from the file
			*Returns hash
		*round(hash, num)
			*Creates a points counter(points) that starts at 0
			*Does the following num times
				1.Prints "Palavra" and the current word from hash
				2.Prompts the user for the word
				3.Compares the user input with the current hash word
				4.If the user input was correct points+=1000 else Points-=1000
			*returns points
	*dicionario.lua
		*Contains the dictionary data

####2015-04-12
	Decided to separate all functions into files and use "require" to include them in main.lua. Made a file to prepare any dictionary to function with my game. Changed all variable and function names to portuguese. Updated the repository on github.
	Files written:
	*main.lua
		*main()
			*Prompts the user for a number of rounds(num)
			*Calls function constroiListaPalavras(dic, num) => tabela
			*Gets initial time with os.time()(tini)
			*Calls rodada(tabela, num) => pontos
			*Gets final time with os.time()(tfim)
			*pontos = pontos/(tfim-tini)
			*Prints pontos
	*constroiListaPalavras.lua
		*constroiListaPalavras(dic, num)
			*Pics random numbers(rand), between 1 and 29858(MAX), num times
			*Iterates over the dicionario table filling a table(tabela) with the strings from the file
			*Returns tabela
	*rodada.lua
		*rodada(tabela, num)
			*Creates a points counter(pontos) that starts at 0
			*Does the following num times
				1.Prints "Palavra" and the current word from hash
				2.Prompts the user for the word
				3.Compares the user input with the current hash word
				4.If the user input was correct pontos+=1000 else pontos-=1000
			*returns pontos
	*preparaDicionario.lua
		*preparaDicionario()
			*Opens two files input(entrada) and output(saida)
			*Entrada is the raw dictionary file
			*Saida is the formatted dictionary file
			*Reads from the raw file and formats it in a table(dic) witch each element is a word of the dictionary.
			*Returns dic
	*dicionario.lua
		*Contains the formatted dictionary from the raw dictionary file
	*Dicionario
		*Contains the raw data to be converted in preparaDicionario.lua to dicionario.lua

####2015-04-13
	The project is pretty much ready for a first version, but i want to do a nice GUI for it, so its in version 0.5 :)

####2015-04-14
	Changed variable names to make the code more understandable. Updated code on github
	Files written:
	*main.lua
		*main()
			*Prompts the user for a number of rounds(numRodadas)
			*Calls function constroiListaPalavras(dicionario, numRodadas) => tabelaPalavras
			*Gets initial time with os.time()(tini)
			*Calls rodada(tabelaPalavras, numRodadas) => pontos
			*Gets final time with os.time()(tfim)
			*pontos = pontos/(tfim-tini)
			*Prints pontos
	*constroiListaPalavras.lua
		*constroiListaPalavras(dicionario, numRodadas)
			*Pics random numbers(numAletorio), between 1 and 29858(maxPalavras), numRodadas times
			*Iterates over the dicionario table filling a table(tabelaPalavras) with the strings from the file
			*Returns tabelaPalavras
	*rodada.lua
		*rodada(tabelaPalavras, numRodadas)
			*Creates a points counter(pontos) that starts at 0
			*Does the following numRodadas times
				1.Prints "Palavra" and the current word from hash
				2.Prompts the user for the word
				3.Compares the user input with the current hash word
				4.If the user input was correct pontos+=1000 else pontos-=1000
			*returns pontos
	*preparaDicionario.lua
		*preparaDicionario()
			*Opens two files input(entrada) and output(saida)
			*Entrada is the raw dictionary file
			*Saida is the formatted dictionary file
			*Reads from the raw file and formats it in a table(dicionario) witch each element is a word of the dictionary.
			*Returns dictionario
	*dicionario.lua
		*Contains the formatted dictionary from the raw dictionary file
	*Dicionario
		*Contains the raw data to be converted in preparaDicionario.lua to dicionario.lua
