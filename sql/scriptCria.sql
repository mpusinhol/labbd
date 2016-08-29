-- Rodrigo Weigert - Nº USP 8937503
-- Matheus Pusinhol - Nº USP 8780298
-- SCC0241 – Laboratório de Bases de Dados - Turma 3
-- Trabalho Prático 1  - Script de Criação 

/**
 * 			Tabela Emissora
 * @cnpjEm 				chave primaria
 * @nomeCompletoEm 		razao social da emissora
 * @nomeFantasiaEm 		nome fantasia da emissora
 * @enderecoEm			endereco da emissora
 * @dataFundacaoEm		data da fundacao da emissora
 * @PK_EMISSORA 		restricao de chave primaria
 * @UK_NOMECOMPLETOEM 	restricao de chave unica
 */
CREATE TABLE EMISSORA
(
	cnpjEm VARCHAR(18) NOT NULL,
	nomeCompletoEm VARCHAR(80) NOT NULL,
	nomeFantasiaEm VARCHAR(80),
	enderecoEm VARCHAR(150),
	dataFundacaoEm DATE,
	
	CONSTRAINT PK_EMISSORA PRIMARY KEY(cnpjEm),
	CONSTRAINT UK_NOMECOMPLETOEM UNIQUE KEY(nomeCompletoEm)
);
