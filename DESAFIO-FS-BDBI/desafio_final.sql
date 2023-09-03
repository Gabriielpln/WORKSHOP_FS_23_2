CREATE DATABASE mecanica;
USE mecanica;

-- Criando Tabelas 
CREATE TABLE cliente(
	nome VARCHAR(100) NOT NULL,
    idade INT,
    telefone VARCHAR(25),
    cpf VARCHAR(14) PRIMARY KEY
);
CREATE TABLE funcionario(
	nome VARCHAR(100) NOT NULL,
    idade INT,
	salario FLOAT,
    cpf VARCHAR(14) PRIMARY KEY
);
CREATE TABLE servico(
	preco FLOAT,
    id INT,
    tipo_servico VARCHAR(50),
    horas_em_servico INT
);
CREATE TABLE produto(
	marca VARCHAR(50), 
    id INT,
    preco FLOAT,
    quantidade INT NOT NULL
);

-- Adicionando Colunas na Tabela
ALTER TABLE cliente ADD COLUMN cep VARCHAR(20);
ALTER TABLE funcionario ADD COLUMN telefone VARCHAR(25);
ALTER TABLE servico ADD COLUMN equipamento INT;
ALTER TABLE produto ADD COLUMN categoria CHAR;

-- Inserindo Dados nas Tabelas
INSERT INTO cliente
(nome, idade, telefone, cpf, cep)
VALUES
('Joao', 19, '83981076105', '137.123.231-87', '58.360-000'),
('Ana', 20, '83981076195', '138.124.211-87', '85.360-000'),
('Marcos', 29, '83981076116', '137.123.123-87', '58.721-000'),
('Jorge', 40, '81981076110', '321.445.211-87', '98.260-000'),
('Juliana', 35, '21981076189', '556.123.211-87', '12.387-000');

INSERT INTO funcionario
(nome, idade, salario, cpf, telefone)
VALUES
('Augusto', 20, 2000.00, '123.321.765-88', '59.123-123'),
('Gabriel', 20, 4000.00, '456.321.765-88', '21.345-123'),
('Luan', 22, 2900.00, '776.321.765-88', '54.123-222'),
('Roberto', 45, 2300.00, '654.321.765-88', '59.662-123'),
('Julio', 27, 3200.00, '543.321.122-88', '71.223-123');

INSERT INTO servico
(preco, id, tipo_servico, horas_em_servico, equipamento)
VALUES
(250.00, 12, 'reparo', 1, 3),
(80.00, 1, 'oleo', 1, 1),
(400.00, 15, 'pneu', 2, 2),
(65.00, 12, 'farol', 3, 3),
(230.00, 5, 'pintura', 5, 7);

INSERT INTO produto
(marca, id, preco, quantidade, categoria)
VALUES 
('Ipiranga', 1, 80.00, 1, 2),
('Pirelli', 15, 400.00, 2, 3),
('Xenom', 12, 65.00, 2, 4),
('Gemoto', 11, 265.00, 1, 5),
('Honda', 23, 35.00, 1, 3);

-- Mostrando Conteúdo
SELECT * FROM cliente;
SELECT * FROM funcionario;
SELECT * FROM servico;
SELECT * FROM produto;