-- Rodrigo Weigert - Nº USP 8937503
-- Matheus Pusinhol - Nº USP ???????
-- SCC0241 – Laboratório de Bases de Dados - Turma 3
-- Trabalho Prático 1  - Script de Inserção 

INSERT INTO emissora(cnpjEm, nomeCompletoEm, nomeFantasiaEm, enderecoEm, dataFundacaoEm)
VALUES ('45.039.237/0001-14', 'TVSBT Canal 4 de São Paulo S.A.', 'Sistema Brasileiro de Televisão', 'Av. das Comunicações, 4 - Vila Jaraguá, CEP 06278-905, Osaco, São Paulo, Brasil', TO_DATE(19/08/1981, 'dd/mm/yyyy'));


INSERT INTO departamento(idDe, nomeDe, telefoneDe, nroFuncionariosDe, cnpjEm)
VALUES (dept_seq.NEXTVAL, 'Departamento Comercial', '(11) 3208-3608 ', X, '45.039.237/0001-14');
INSERT INTO departamento(idDe, nomeDe, telefoneDe, nroFuncionariosDe, cnpjEm)
VALUES (dept_seq.NEXTVAL, 'Departamento de Jornalismo', '(11) 3575-5345', X, '45.039.237/0001-14');
INSERT INTO departamento(idDe, nomeDe, telefoneDe, nroFuncionariosDe, cnpjEm)
VALUES (dept_seq.NEXTVAL, 'Departamento de Teledramaturgia', '(11) 3571-0224', X, '45.039.237/0001-14');
INSERT INTO departamento(idDe, nomeDe, telefoneDe, nroFuncionariosDe, cnpjEm)
VALUES (dept_seq.NEXTVAL, 'Departamento Musical', '(11) 3288-4150 ', X, '45.039.237/0001-14');
INSERT INTO departamento(idDe, nomeDe, telefoneDe, nroFuncionariosDe, cnpjEm)
VALUES (dept_seq.NEXTVAL, 'Departamento de Marketing e Criação Visual', '(11) 3208-3025', X, '45.039.237/0001-14');
INSERT INTO departamento(idDe, nomeDe, telefoneDe, nroFuncionariosDe, cnpjEm)
VALUES (dept_seq.NEXTVAL, 'Departamento de Recursos Humanos', '(11) 3288-1713', X, '45.039.237/0001-14');
INSERT INTO departamento(idDe, nomeDe, telefoneDe, nroFuncionariosDe, cnpjEm)
VALUES (dept_seq.NEXTVAL, 'Departamento de Produção', '(11) 3571-4160', X, '45.039.237/0001-14');
INSERT INTO departamento(idDe, nomeDe, telefoneDe, nroFuncionariosDe, cnpjEm)
VALUES (dept_seq.NEXTVAL, 'Departamento de Elenco', '(11) 3288-2004', X, '45.039.237/0001-14');
INSERT INTO departamento(idDe, nomeDe, telefoneDe, nroFuncionariosDe, cnpjEm)
VALUES (dept_seq.NEXTVAL, 'Departamento  de Comunicação', '(11) 3571-0156', X, '45.039.237/0001-14');
INSERT INTO departamento(idDe, nomeDe, telefoneDe, nroFuncionariosDe, cnpjEm)
VALUES (dept_seq.NEXTVAL, 'Departamento de CGI', '(11) 3571-3204', X, '45.039.237/0001-14');
