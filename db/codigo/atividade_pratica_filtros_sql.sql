-- BANCO DE DADOS: empresa_comercial
CREATE DATABASE empresa_comercial;
USE empresa_comercial;

-- TABELA: departamentos
CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

-- TABELA: funcionarios
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);

-- TABELA: clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50),
    email VARCHAR(100),
    ativo BOOLEAN
);

-- TABELA: produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT
);

-- TABELA: vendas
CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    funcionario_id INT,
    produto_id INT,
    quantidade INT,
    data_venda DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- INSERIR DEPARTAMENTOS
INSERT INTO departamentos (nome) VALUES
('Comercial'), ('Financeiro'), ('RH'), ('TI');

-- INSERIR FUNCIONÁRIOS
INSERT INTO funcionarios (nome, email, cargo, salario, departamento_id) VALUES
('Alice Martins', 'alice@empresa.com', 'Vendedora', 3000.00, 1),
('Bruno Souza', 'bruno@empresa.com', 'Analista Financeiro', 4500.00, 2),
('Carla Mendes', 'carla@empresa.com', 'Recursos Humanos', 4000.00, 3),
('Daniel Lima', 'daniel@empresa.com', 'Desenvolvedor', 5000.00, 4),
('Eduarda Silva', 'eduarda@empresa.com', 'Vendedora', 3200.00, 1);

-- INSERIR CLIENTES
INSERT INTO clientes (nome, cidade, email, ativo) VALUES
('Fábio Oliveira', 'Porto Alegre', 'fabio@gmail.com', 1),
('Gisele Rocha', 'Canoas', 'gisele@gmail.com', 1),
('Henrique Lopes', 'Gravataí', 'henrique@gmail.com', 0),
('Isadora Nunes', 'Porto Alegre', 'isadora@gmail.com', 1),
('João Vieira', 'São Leopoldo', 'joao@gmail.com', 0);

-- INSERIR PRODUTOS
INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Notebook Dell', 'Informática', 3500.00, 10),
('Mouse Wireless', 'Periféricos', 120.00, 50),
('Monitor LG 24"', 'Monitores', 800.00, 15),
('Cadeira Gamer', 'Móveis', 950.00, 8),
('Teclado Mecânico', 'Periféricos', 250.00, 25);

-- INSERIR VENDAS
INSERT INTO vendas (cliente_id, funcionario_id, produto_id, quantidade, data_venda) VALUES
(1, 1, 1, 1, '2025-06-01'),
(2, 5, 2, 2, '2025-06-02'),
(1, 1, 3, 1, '2025-06-03'),
(3, 1, 5, 1, '2025-06-04'),
(4, 5, 2, 1, '2025-06-05'),
(5, 1, 4, 1, '2025-06-06'),
(2, 5, 5, 1, '2025-06-07');

select * from produtos where preco between 200 and 1000 and estoque > 10;

select * from funcionarios where cargo = 'vendendora'  or cargo = salario > 4500;

select * from clientes where moram in ('Porto Alegre' or 'canoas');

select * from funcionarios where not departamento = RH;

select * from produtos where categoria = 'Perifericos' and nome like 'T%';

select * from vendas where dias  between 2025-06-02 and 2025-06-06;

select * from clientes where emails  like  'gmail.com';

select nome, cidade from clientes where ativo = 0;

select * from produtos where categoria = 'informatica' or estoque < 15;

select * from funcionarios where nome like '%a' and ganham > 3000;