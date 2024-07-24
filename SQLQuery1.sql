CREATE DATABASE ProvaMold;
GO

USE ProvaMold;
GO

CREATE TABLE Departamento(
	id int identity(1,1),
	nome varchar(100) not null,
	CONSTRAINT pk_Departamento PRIMARY KEY (id)
);
GO

CREATE TABLE Funcionario(
	id int identity(1,1),
	nome varchar(100) not null,
	salario decimal(8,2) not null,
	id_departamento int not null,
	CONSTRAINT pk_Funcionario PRIMARY KEY (id),
	CONSTRAINT fk_Funcionario_Departamento FOREIGN KEY (id_departamento) REFERENCES Departamento(id)
);

INSERT INTO Departamento (nome) VALUES (	'Desenvolvimento');
INSERT INTO Departamento (nome) VALUES (	'RH');
INSERT INTO Departamento (nome) VALUES (	'QA');

INSERT INTO Funcionario (nome, salario, id_departamento) VALUES ('Caio', 5000.00, 1);
INSERT INTO Funcionario (nome, salario, id_departamento) VALUES ('Gabriel', 3000.00, 3);
INSERT INTO Funcionario (nome, salario, id_departamento) VALUES ('Lucas', 3500.00, 2);
INSERT INTO Funcionario (nome, salario, id_departamento) VALUES ('Jonas', 2000.00, 1);
INSERT INTO Funcionario (nome, salario, id_departamento) VALUES ('Flavia', 7000.00, 3);
INSERT INTO Funcionario (nome, salario, id_departamento) VALUES ('Gabi', 1500.00, 2);

SELECT * FROM Departamento;
SELECT * FROM Funcionario;

SELECT
	Funcionario.nome AS
	nome_funcionario,
	Funcionario.salario, Departamento.nome AS
	nome_departamento
FROM
	Funcionario
JOIN
	Departamento ON
	Funcionario.id_departamento = Departamento.id;

SELECT 
	f.nome AS nome_funcionario,
	d.nome AS nome_departamento,
	f.salario
FROM
	Funcionario f
JOIN
	Departamento d ON
	f.id_departamento = d.id
WHERE
	f.salario = (SELECT
					MAX(f2.salario)
				FROM
					Funcionario f2
				WHERE
					f2.id_departamento = f.id_departamento
				);