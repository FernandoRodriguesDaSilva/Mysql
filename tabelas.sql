/* Modelagem Básica */

CLIENTE

Nome caracter(30)
cpf numerico(11)
email caracter(20)
telefone caracter(30)
sexo caracter(1)
endereco caracter(100)

/* processo de modelagem */

/* MODELAGEM CONCEITUAL - RASCUNHO */

/* MODELAGEM LÓGICA - BRMODELO */

/* MODELAGEM FISÌCA - SCRIPT DO BANCO */

/* CRIANDO UM BANCO DE DADOS */

CREATE DATABASE IF NOT EXISTS PROJETO;

USE PROJETO;

CREATE TABLE CLIENTE(
	nome varchar(30),
	sexo char(1),
	email varchar(30),
	cpf int(11),
	telefone varchar(30),
	endereco varchar(100)
);

-- Mostrar todas as tabelas

show tables;

-- descrevendo tabela ( mostrar os campos que tem dentro )

desc <nome_da_tabela>;

-- fazendo um insert no banco de dados 

INSERT INTO cliente (NOME,SEXO,ENDERECO,TELEFONE,CPF,EMAIL)VALUES('LILIAN','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','(16)555689561',221548963,'LILIAN@GMAIL.COM.BR');
INSERT INTO cliente (NOME,SEXO,ENDERECO,TELEFONE,CPF,EMAIL)VALUES('CELIA','F','RIACHUELO - ESTACIO - RIO DE JANEIRO - RJ','(16)548565',54654897,'CELIA@HOTMAIL.COM');
INSERT INTO cliente (NOME,SEXO,ENDERECO,TELEFONE,CPF,EMAIL)VALUES('JORGE','M','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG','(16)22255566',11452568,'JORGE@OUTLOOCK.COM.BR');
INSERT INTO cliente (NOME,SEXO,ENDERECO,TELEFONE,CPF,EMAIL)VALUES('FRANCISCO','M','SÃO PAULO - SÃO PAULO CAPITAL - SP','(16)444444',114558745,'FRA@YAHOO.COM');

-- FAZENDO OUTRO INSERT NO BANCO DE DADOS ( PARA USAR ESSA ESQUEMA TEM QUE SER NA ORDEM EM QUE A TABELA FOI CRIADA)

INSERT INTO cliente VALUES('ANA','F','SÃO CARLOS - SP', 22222222,'(16)65698565','ANA@HOTMAIL.COM'),
							('IVANA','F','ITIRAPINA - SP', 6666666,'(16)3232665','IVANA@GMAIL.COM'),
							('SAVANA','F','BROTAS - SP', 8888888,'(16)2314658','SAVANA@YAHOO.COM.BR'),
							('JOEL','M','PIRASSUNUNGA - SP', 5555556,'(16)56568956','JOEL@GMAIL.COM'),
							('MICHAEL','M','CAMPINAS - SP', 9999999,'(16)32356598','MICHAEL@GMAIL.COM');




							/* COMANDO SELECT */

SELECT NOW();   /* MOSTRAR O DIA E A HORA QUE O BANCO FOI CRIANDO */


SELECT NOME, SEXO, EMAIL FROM CLIENTE;

SELECT * FROM <nome_da_tabela>;

/* traz o nome e o endereco do sexo masculino */

SELECT nome,endereco FROM cliente
where sexo = 'M';

/* traz o nome e sexo pelo endereço */

SELECT nome,sexo, endereco FROM cliente
where endereco LIKE '%RJ%';

/* operadores lógicos - OR / OU */

select nome, email from cliente 
where sexo = 'M' or endereco like '%RJ';

select nome , email from cliente 
where sexo = 'F' or endereco like '%brotas';

/* operadores lógicos - AND / E */

select nome, email from cliente 
where sexo = "M" and endereco like "%RJ";




