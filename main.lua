MAX = 29858
require "dicionario"
require "preparaDicionario"
require "constroiListaPalavras"
require "rodada"

function main()
  preparaDicionario()
  print("Bem vindo ao Jogo das palavras!\n")
  print("Insira o numero de palavras da rodada: ")
  local num = io.read("*n")
  tabela = {}
  tabela = constroiListaPalavras(num, dic)
  local tini = os.time()
  pontos = rodada(num, tabela)
  local tfim = os.time()
  if pontos > 0 then
    resultado = math.ceil(pontos/(tfim-tini))
  else
    resultado = 0
  end
  print("\nSeu score e:")
  print(resultado)
  print("\n")
end
main()
