require_relative "ui"



def logica_do_jogo

	apresenta_jogo

	erros = 0

	chutes = []

	pontos_acumulados = 0

	palavra_secreta = sorteia_palavra_secreta

	while erros < 5

			chute = pede_o_chute

			chutes << chute

			if chute.size > 1
				if chute == palavra_secreta
					pontos_acumulados += 100
					break
				else
					erros+=1
					pontos_acumulados -= 30
					next	
				end
			else
				mostra_mascara chutes, palavra_secreta
			end		
	end	

	

end	
