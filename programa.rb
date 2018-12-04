def inicia_jogo
	puts "Olá, Seja Bem Vindo!"
	puts "Digite seu nome : "

	nome = gets.strip

	puts "Você está pronto para iniciar o jogo, #{nome}"

end

def pega_chute_do_cliente

	puts "Chute um número:"
	numero = gets.to_i
	
	numero
end	

def sorteia
	
	puts "Quantos números quer no sorteio?"

	quantidade = gets.to_i

	puts "Sorteando um número..."

	numero_sorteado = rand(quantidade) + 1

	numero_sorteado

end


def joga

	chutes = []

	chances = pega_quantidade_de_chances

	conta = 0

	numero_sorteado = sorteia 

	while conta < chances

		chute = pega_chute_do_cliente

		if !tira_repeticao chute, chutes
		
			guarda chute, chutes

			break if verifica_se_acertou numero_sorteado, chute
			
			define_posicao chute, numero_sorteado
			
			conta += 1
		end	
	end	

end	

def pega_quantidade_de_chances

	puts "Quantas chances você quer ter?"

	chances = gets.to_i
	
	chances
end


def tira_repeticao(chute, chutes)
		for numero in chutes
			 if numero == chute
			 	puts "Este número já foi selecionado"
			 	return true
			 end	
		end

	false	
end

def	guarda(chute, chutes)
		chutes << chute
		puts " Você escolheu:  #{chutes}"
end

def define_posicao(chute, numero_sorteado)
	
	if chute < numero_sorteado
		puts "O chute é menor"	
	else	
		puts "O chute é maior"
	end	
end

def verifica_se_acertou(numero_sorteado, chute)
	if numero_sorteado == chute
		puts "Acertou!"
	end	
end		

inicia_jogo

joga



	












 