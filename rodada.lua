function rodada(numRodadas, tabelaPalavras)
  local pontos = 0
  for i = 1, numRodadas do
    print("\nPalavra:")
    print(tabelaPalavras[i])
    local comp = io.read()
    if (comp == "" and i == 1) then comp = io.read() end
    if tabelaPalavras[i] == comp then
      pontos = pontos + 1000
      print("AEEEEEEEE!!")
    else
      pontos = pontos - 1000
      print("Seu Burro!!")
    end
  end
  return pontos
end