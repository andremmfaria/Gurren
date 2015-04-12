function constroiListaPalavras(num, dic)
  local tabela = {}
  for i = 1, num do
    local n = 0
    local aleat = math.random(MAX)
    while n ~= num do
      n = n + 1
      tabela[i] = dic[aleat]
    end
  end
  return tabela
end