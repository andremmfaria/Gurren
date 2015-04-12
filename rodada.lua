function rodada(num, tabela)
  local pontos = 0
  for i = 1, num do
    print("\nPalavra:")
    print(tabela[i])
    local comp = io.read()
    if (comp == "" and i == 1) then comp = io.read() end
    if tabela[i] == comp then
      pontos = pontos + 1000
      print("AEEEEEEEE!!")
    else
      pontos = pontos - 1000
      print("Seu Burro!!")
    end
  end
  return pontos
end