MAX = 29858
require "Dict"

function main()
	print("Bem vindo ao Jogo das palavras!\n")
	print("Insira o numero de palavras da rodada: ")
	local num = io.read("*n")
	hash = {}
	hash = buildWordList(num, dict)
	file:close()
	local tini = os.time()
	letras = round(num, hash)
	local tfim = os.time()
	print("\nSeu score eh:")
	print(letras/(tfim-tini))
	print("\n")
	end

function buildWordList(num, dict)
	local hash = {}
	for i = 1, num do
	local n = 0
local rand = math.random(MAX)
	while n ~= num do
	n = n + 1
	hash[i] = dict[rand]
	end
	end
	return hash
	end

function round(num, hash)
	local letras = 0
	for i = 1, num do
	print("\nPalavra:\n")
print(hash[i])
	local comp = io.read("*all")
	if hash[i] == comp then
	letras = letras + 1000
	print("AEEEEEEEEEEE!\n")
	else
	letras = letras - 1000
	print("Seu Burro!!\n")
	end
	end
	return letras
	end

main()
