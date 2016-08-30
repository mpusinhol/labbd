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
 * @UK_NOMECOMPLETOEM 	restricao de chave unica para o nome da emissora
 */
CREATE TABLE emissora
(
	cnpjEm VARCHAR(18) NOT NULL,
	nomeCompletoEm VARCHAR(80) NOT NULL,
	nomeFantasiaEm VARCHAR(80),
	enderecoEm VARCHAR(150),
	dataFundacaoEm DATE,
	
	CONSTRAINT PK_EMISSORA PRIMARY KEY(cnpjEm),
	CONSTRAINT UK_EMISSORA_NOMECOMPLETOEM UNIQUE KEY(nomeCompletoEm)
);

/**
 * 			Tabela Departamento
 * @idDe 					chave primaria
 * @nomeDe 					nome do departamento
 * @telefoneDe 				telefone do departamento
 * @nroFuncionariosDe		numero de funcionarios do departamento
 * @cnpjEm					CNPJ da emissora
 * @PK_DEPARTAMENTO 		restricao de chave primaria
 * @UK_DEPARTAMENTO_NOMEDE 	restricao de chave unica para o nome do departamento
 * @FK_DEPARTAMENTO			restricao de chave estrangeira com a tabela Emissora. Ao ser removida a emissora, o departamento tambem e removido
 */
CREATE TABLE departamento
(
	idDe NUMBER(2) NOT NULL,
	nomeDe VARCHAR(80) NOT NULL,
	telefoneDe VARCHAR(9),
	nroFuncionariosDe NUMBER(4),
	cnpjEm VARCHAR(18) NOT NULL,
	
	CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY(idDe),
	CONSTRAINT UK_DEPARTAMENTO_NOMEDE UNIQUE KEY(nomeDe),
	CONSTRAINT FK_DEPARTAMENTO FOREIGN KEY(cnpjEm) REFERENCES emissora(cnpjEm) ON DELETE CASCADE
);

/**
 * 			Tabela tipoFuncionario
 * @idTipoFu 				chave primaria
 * @salarioBaseTipoFu 		salario base para o tipo de funcionario
 * @descricaoTipoFu 		descricao do tipo de funcionario
 * @PK_TIPOFUNCIONARIO 		restricao de chave primaria
 */
CREATE TABLE tipoFuncionario
(
	idTipoFu NUMBER(3) NOT NULL,
	salarioBaseTipoFu NUMBER(6, 2) NOT NULL,
	descricaoTipoFu VARCHAR(80),
	
	PRIMARY KEY PK_TIPOFUNCIONARIO PRIMARY KEY(idTipoFu)
);

/**
 * 			Tabela Funcionario
 * @idFu 					chave primaria
 * @nomeCompletoFu 			nome do funcionario
 * @dataNascimentoFu 		data de nascimento do funcionario
 * @cpfFu					cpf do funcionario
 * @salarioFu				salario do funcionario
 * @idTipoFu				identificacao do tipo do funcionario
 * @PK_FUNCIONARIO	 		restricao de chave primaria
 * @UK_FUNCIONARIO_CPFFU 	restricao de chave unica para o cpf do funcionario
 * @FK_FUNCIONARIO			restricao de chave estrangeira com a tabela tipoFuncionario. Ao ser removido o tipo do funcionario, o campo idTipoFu sera setado para null
 */
CREATE TABLE funcionario
(
	idFu NUMBER(7) NOT NULL,
	nomeCompletoFu VARCHAR(80) NOT NULL,
	dataNascimentoFu DATE,
	cpfFu VARCHAR(14) NOT NULL,
	salarioFu NUMBER(6, 2),
	idTipoFu NUMBER(3) NOT NULL,
	
	CONSTRAINT PK_FUNCIONARIO PRIMARY KEY(idFu),
	CONSTRAINT UK_FUNCIONARIO_CPFFU UNIQUE KEY(cpfFu),
	CONSTRAINT FK_FUNCIONARIO FOREIGN KEY(idTipoFu) REFERENCES tipoFuncionario(idTipoFu) ON DELETE SET NULL
);
