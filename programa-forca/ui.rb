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

def mostra_mascara mascara
	puts "#{mascara}"
end

def repetido
	puts "O chute já foi dado"
end

def ganhou_o_jogo
	puts "Parabéns! Você acertou a Palavra!"
end

def acertou quantidade
	puts "Você acertou a letra"
	puts "A palavra tem #{quantidade} letras"
end	

def mostra_erros erros
	puts "Você já errou #{erros} vezes"
end	

def quantidade_de_pontos pontos
	puts "Você conquistou #{pontos}"
end	