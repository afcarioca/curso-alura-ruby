def apresenta_jogo
	puts "Bem vindo ao jogo"
	puts "Entre com seu nome"
	nome = gets.strip
	puts "Você está pronto para jogar, #{nome}"
end

def pede_o_chute
	puts "Chute uma palavra ou letra"
	chute = gets.strip.downcase
	chute
end	

def sorteia_palavra_secreta
	puts "Sorteando a palavra..."
	arquivo = File.read("dicionario.txt")
	lista_de_palavras = arquivo.split("\n")
	numero_da_palavra_secreta = rand(lista_de_palavras.size)
	lista_de_palavras[numero_da_palavra_secreta].downcase
end	