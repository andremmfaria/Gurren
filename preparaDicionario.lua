function preparaDicionario()

local entrada = io.open("Dicionario","r")
local saida = io.open("dicionario.lua","w")

local n = 0
local prefixo = "dicionario = {"
saida:write(prefixo)
local aspas = string.char(34)

for linha in entrada:lines() do
	local nl = aspas .. linha .. aspas
	if n == 0 then
		saida:write(nl)
		n = 1
	else
		local nlu = ", " .. nl
		saida:write(nlu)
	end
end

local suffixo = "}"
saida:write(suffixo)

io.close(entrada)
io.close(saida)

end
