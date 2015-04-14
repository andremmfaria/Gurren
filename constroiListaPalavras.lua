require "dicionario"

function constroiListaPalavras(numRodadas)
  local tabelaPalavras = {}
  for i = 1, numRodadas do
    local n = 0
    local numAleatorio = math.random(maxPalavras)
    while n ~= numRodadas do
      n = n + 1
      tabelaPalavras[i] = dicionario[numAleatorio]
    end
  end
  return tabelaPalavras
end