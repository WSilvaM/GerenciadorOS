USE MASTER
GO

IF EXISTS(SELECT 1 FROM SYS.DATABASES WHERE NAME = 'ORDEMSERVICO')
BEGIN
	ALTER DATABASE ORDEMSERVICO SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE ORDEMSERVICO
END
GO

CREATE DATABASE ORDEMSERVICO
GO

USE ORDEMSERVICO
GO
--TABELA "PERMISSÕES DO USUARIO"
CREATE TABLE Permissao
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Descricao VARCHAR(250)
)
GO
--TABELA "PLANO"
CREATE TABLE Plano
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Descricao VARCHAR(250),
	Valor FLOAT
)
GO
--TABELA "CLIENTE"
CREATE TABLE Cliente
(
	Id INT PRIMARY KEY,
	Id_Plano INT,
	InicioDoContrato DATETIME,
	FimDoContrato DATETIME
)
GO
--TABELA "FUNCIONARIO"
CREATE TABLE Funcionario
(
	Id INT PRIMARY KEY,
	Id_Permissao INT,
	Usuario VARCHAR(50),
	Senha VARCHAR(150),
	Salario FLOAT,
	Cargo VARCHAR(50),
	DataAdmissao DATETIME,
	DataDemissao DATETIME
)
GO
--TABELA "PESSOA"
CREATE TABLE Pessoa
(
	Id INT PRIMARY KEY,
	Nome VARCHAR(150),
	Telefone VARCHAR(15),
	Email VARCHAR(150),
	Endereco VARCHAR(150),
	DataNascimento DATETIME,
	Cpf VARCHAR(11),
	Rg VARCHAR(13),
	OrgaoExpeditor VARCHAR(6),
	Nacionalidade VARCHAR(10),
	EstadoCivil VARCHAR(10)
)
GO
--TABELA "GESTÃO DE O.S"
CREATE TABLE GestaoDeOs
	(
	Protocolo INT PRIMARY KEY IDENTITY(1,1),
	TipoChamado VARCHAR (150),
	Descricao VARCHAR(1000),
	DataAbertura DATETIME,
	DataDeFechamento DATETIME,
	TecnicoResponsavel VARCHAR(150),
	Id_Funcionario INT,
	Id_Cliente INT,
	Id_Plano INT,
	Id_Status INT
)
--TABELA "STATUS DA O.S"
CREATE TABLE StatusOs
	(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Descricao VARCHAR(15) 
)
--INSERT DAS TABELAS "PERMISSÃO"
INSERT INTO Permissao(Descricao)
	VALUES('Abrir O.S'),
	('Abrir O.S, Fechar O.S'),
	('Abrir O.S, Fechar O.S, Encaminhar O.S')
GO
--INSERT DAS TABELAS "PLANO"
INSERT INTO Plano(Descricao, Valor)
	VALUES('300 MEGAS', 99.90),
	('350 MEGAS + 1 ROTEADOR EM COMODATO', 119.90),
	('400 MEGAS + 1 ROTEADOR EM COMODATO', 129.90),
	('500 MEGAS + 2 ROTEADORES EM COMODATO', 139.90)
GO
--INSERT DAS TABELAS "PESSOA"
INSERT INTO Pessoa(Id, Nome, Telefone, Email, Endereco, DataNascimento, Cpf, Rg, OrgaoExpeditor, Nacionalidade, EstadoCivil)
	VALUES (1,'Maria da silva', '63992052587', 'emailcliente@email.com', 'Rua A, esquina com rua B', '1999-01-01', '00100200344', '1123654', 'SSP', 'Brasileiro', 'Casada'),
	(2,'João da silva', '63992052588', 'emailcliente01@email.com', 'Rua C, esquina com rua D','1999-01-01', '00100200355', '1123655', 'SSP', 'Brasileiro', 'Casado'),
	(3, 'josé Gomes', '63992052598', 'emailcliente03@email.com', 'Rua D, esquina com rua E', '1999-01-01', '00100200366', '1123668', 'SSP', 'Brasileiro', 'Solteiro'),
	(4, 'Maria Pereira', '63992052522', 'emailcliente04@email.com', 'Rua F, esquina com rua G', '1999-01-01', '00100200311', '1123612', 'SSP', 'Brasileiro', 'Solteira')
GO
--INSERT DAS TABELAS "FUNCIONARIO"
INSERT INTO Funcionario (Id, Id_Permissao ,Usuario, Senha, Salario, Cargo, DataAdmissao)
	VALUES ( 4, 1 , 'MARIA.P', '123456', 2500, 'N1', '2020-01-01'),
	(2, 3, 'JOAO.S', '123456', 4500, 'N3', '2020-01-01')
GO
--TABELA "STATUS DA O.S"
INSERT INTO StatusOs(Descricao)
	VALUES ('Aberto'),
	('Fechado'),
	('Encaminhado')
GO
--TABELA "GESTÃO DE O.S"
INSERT INTO GestaoDeOs(TipoChamado, Descricao, DataAbertura, DataDeFechamento, TecnicoResponsavel, Id_Funcionario, Id_Cliente, Id_Plano, Id_Status)
	VALUES ('Loss',	'Cliente sem conexão, ONU apresentando perca de sinal.', '2022-05-27', NULL, NULL , 1, 3, 1, 1)
GO
--TABELA "CLIENTE"
INSERT INTO Cliente(Id , Id_Plano,	InicioDoContrato, FimDoContrato)
	VALUES(3,	1, '2022-05-27', NULL)
GO


SELECT*FROM Permissao
SELECT*FROM Plano
SELECT*FROM Pessoa
SELECT*FROM Funcionario
SELECT*FROM GestaoDeOs
SELECT*FROM Cliente
SELECT*FROM StatusOs
GO


--SELECT*FROM Pessoa P
--INNER JOIN Funcionario F
--ON P.Id = F.Id
--WHERE Nome LIKE '%João%'


