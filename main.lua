maxPalavras = 29858
require "preparaDicionario"
require "constroiListaPalavras"
require "rodada"

function main()
  preparaDicionario()
  print("Bem vindo ao Jogo das palavras!\n")
  print("Insira o numero de palavras da rodada: ")
  local numRodadas = io.read("*n")
  tabelaPalavras = {}
  tabelaPalavras = constroiListaPalavras(numRodadas)
  local tempoInicio = os.time()
  pontos = rodada(numRodadas, tabelaPalavras)
  local tempoFim = os.time()
  if pontos > 0 then
    resultado = math.ceil(pontos/(tempoFim-tempoInicio))
  else
    resultado = 0
  end
  print("\nSeu score e:")
  print(resultado)
  print("\n")
end
main()
