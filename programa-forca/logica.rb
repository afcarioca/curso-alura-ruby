require_relative "ui"
require_relative "rank"

def cria_mascara chutes, palavra_secreta
	mascara = ""
	for letra in palavra_secreta.chars
		if chutes.include? letra 
			mascara += letra
		else
			mascara += "_"
		end	
	end	

	mascara
end	

def verifica_chute_repetido chute, chutes

	loop do
		if chutes.include? chute
			repetido chute
			chute = pede_o_chute
			puts "\n\n\n\n\n"
		else
			break
		end	
	end

	chutes << chute
end	

def logica_do_jogo

	nome = apresenta_jogo

	erros = 0

	chutes = []

	pontos_acumulados = 0

	palavra_secreta = sorteia_palavra_secreta

	while erros < 5

			mascara = cria_mascara chutes, palavra_secreta

			mostra_mascara mascara

			chute = pede_o_chute

			verifica_chute_repetido chute, chutes

			if chute.size > 1
				if chute == palavra_secreta
					ganhou_o_jogo
					pontos_acumulados += 100
					break
				else

					erros +=1
					mostra_erros erros
					pontos_acumulados -= 30
					next	
				end
			else
				if palavra_secreta.chars.include? chute
					acertou palavra_secreta.count(chute)	
					next		
				else
					erros += 1
					mostra_erros erros
				end	
			end		
	end	

	quantidade_de_pontos pontos_acumulados

	lista_arquivo = le_rank

	if pontos_acumulados > lista_arquivo[1].to_i
		atualiza_rank nome, pontos_acumulados
	end	

end	
