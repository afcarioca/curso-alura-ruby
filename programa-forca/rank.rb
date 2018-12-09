def le_rank
	arquivo = File.read "rank.txt"
	lista_arquivo = arquivo.split("\n")
	lista_arquivo
end

def atualiza_rank nome, pontos_acumulados
	conteudo = "#{nome}\n#{pontos_acumulados}"
	File.write "rank.txt",conteudo 
end	