-- Questão 1 - Criando tabelas -
CREATE DATABASE concessionaria;
USE concessionaria;

CREATE TABLE funcionario(
	nome VARCHAR(100) NOT NULL,
    idade INT,
	telefone VARCHAR(25),
    setor VARCHAR(50),
    categoria CHAR
);

CREATE TABLE cliente(
	nome VARCHAR(100) NOT NULL,
    idade INT,
    telefone VARCHAR(25),
    cpf VARCHAR(14) PRIMARY KEY,
    categoria CHAR
);

CREATE TABLE veiculo(
	marca VARCHAR(40),
    id INT,
	preco FLOAT,
    categoria VARCHAR(40) NOT NULL,
    quantidade INT NOT NULL
);
-- Questão 2 - Adicionando Colunas -
ALTER TABLE funcionario ADD COLUMN salario FLOAT;
ALTER TABLE cliente ADD COLUMN cep VARCHAR(20);
ALTER TABLE veiculo ADD COLUMN cor VARCHAR(100);

-- Questão 3 - Inserindo Valores -
INSERT INTO funcionario
(nome, idade, telefone, setor, categoria, salario)
VALUES
('Julio', 25, '8394197216', 'vendas', 'V', 1500.00),
('Marcos', 30, '8194197216', 'marketing', 'V', 1800.00),
('Juliano', 32, '2394197216', 'mecanico', 'V', 1900.00),
('Alvaro', 33, '2194197216', 'gerente', 'V', 2500.00),
('Manoel', 29, '8394123216', 'Gestor', 'V', 3800.00);

INSERT INTO cliente
(nome, idade, telefone, cpf, categoria, cep)
VALUES
('Gabriel', 20, '8392187216', '123.456.789-12', 'C', '58360000'),
('Jose', 18, '8392187227', '321.456.789-15', 'C', '52360000'),
('Antonio', 22, '8392187238', '123.654.789-12', 'C', '12760000'),
('Julia', 24, '8192187216', '123.456.987-12', 'C', '81360000'),
('Rafaela', 21, '2192187216', '321.654.789-12', 'C', '95380000');

INSERT INTO veiculo
(marca, id, preco, categoria, quantidade, cor)
VALUES
('Toyota', 123, 190000.00, 'SUV', 20, 'vermelho'),
('Volks', 321, 40000.00, 'hatch', 10, 'prata'),
('Renault', 456, 29000.00, 'seda', 5, 'branco'),
('Fiat', 444, 200000.00, 'SUV', 8, 'preto'),
('chevrolet', 543, 90000.00, 'hatch', 20, 'branco');

-- Questão 4 - Removendo Colunas -
ALTER TABLE funcionario DROP COLUMN idade;
ALTER TABLE cliente DROP COLUMN categoria;
ALTER TABLE veiculo DROP COLUMN quantidade;

-- Questão 5 - Mostrando Conteúdo - 
SELECT * FROM funcionario;
SELECT * FROM cliente;
SELECT * FROM veiculo;

-- Questão 6 - Mostrando Conteúdo com Condição - 
SELECT * FROM funcionario WHERE salario > 1800.00;
SELECT nome, cpf FROM cliente WHERE idade < 22; 
SELECT marca, id, preco FROM veiculo WHERE cor = 'branco';