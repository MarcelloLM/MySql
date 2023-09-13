 -- Criar db escola --
create database if not exists Escola; 
-- para utilizar o banco --
use escola;
-- Criar a tabela pessoa e os atributos dentro do parenteses --
-- Na frente do atributo indica o tipo do dado --
-- UNIQUE - dado nao repete--
-- NOT NULL preenchimento obrigatorio--
create table Pessoa (
ID int (10) PRIMARY KEY,
UltimoNome varchar(100) NOT NULL, 
PrimeiroNome varchar(100) NOT NULL,
Idade int (3)
);

-- Alterar algo na tabela --
-- Incluir um atributo --
ALTER TABLE Pessoa ADD Column telefone int; 

-- Excluir uma coluna com ALTER TABLE --
ALTER TABLE Pessoa DROP Column telefone; 

-- modificar o tipo de dados da coluna atributos -- 
ALTER TABLE Pessoa MODIFY Column telefone varchar(20);

-- Incluir uma restrição em uma coluna --
ALTER TABLE Pessoa MODIFY telefone varchar(20) NOT NULL; 

DROP TABLE Pessoa;

