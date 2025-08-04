
CREATE DATABASE livraria_online;
USE livraria_online;

CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    nacionalidade VARCHAR(50)
);

CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_venda DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE itens_venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    venda_id INT,
    livro_id INT,
    quantidade INT,
    FOREIGN KEY (venda_id) REFERENCES vendas(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

INSERT INTO autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileira'),
('George Orwell', 'Britânica'),
('Clarice Lispector', 'Brasileira'),
('J. K. Rowling', 'Britânica'),
('Jorge Amado', 'Brasileira');

INSERT INTO livros (titulo, categoria, preco, autor_id) VALUES
('Dom Casmurro', 'Romance', 35.00, 1),
('1984', 'Ficção Científica', 42.00, 2),
('A Hora da Estrela', 'Drama', 30.00, 3),
('Harry Potter e a Pedra Filosofal', 'Fantasia', 55.00, 4),
('Capitães da Areia', 'Romance', 38.00, 5),
('Harry Potter e o Cálice de Fogo', 'Fantasia', 60.00, 4),
('Memórias Póstumas de Brás Cubas', 'Romance', 33.00, 1);

INSERT INTO clientes (nome, cidade, email) VALUES
('Ana Paula', 'Santa Cruz do Sul', 'ana@gmail.com'),
('Bruno Costa', 'Canoas', 'bruno@gmail.com'),
('Camila Rocha', 'São Paulo', 'camila@gmail.com'),
('Diego Farias', 'Porto Alegre', 'diego@gmail.com');

INSERT INTO vendas (cliente_id, data_venda) VALUES
(1, '2025-06-01'),
(2, '2025-06-02'),
(3, '2025-06-03'),
(4, '2025-06-04'),
(1, '2025-06-05');

INSERT INTO itens_venda (venda_id, livro_id, quantidade) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 4, 1),
(3, 5, 1),
(4, 1, 1),
(5, 6, 1),
(5, 7, 1);

select livros, count(*) from livros order by categotia;

select categoria, avg(preco) from livros order by categoria;

select categoria, count(*) > 2 from livros order by categoria;

select max(preco), min(preco) from livros;

select nacionalidade, count(*) from autores group by nacionalidade;

select nome from autores where nacionalidade = 'Brasileira';

select cidade, count(*) from clientes group by cidade;

select cidade, count(*) > 1 from clientes group by cidade;

select count(*) from livros;

select avg(preco) from livros;



select clientes.nome, vendas.data from clientes inner join vendas on clientes.id = vendas.cliente_id;

select livros.titulo, autores.nome from livros inner join autores on livros.autor_id = autores.id;

select clientes.nome, livros.titulo, itens_venda.quantidade from vendas inner join clientes on vendas.cliente_id = clientes.id inner join itens_venda on vendas.id = itens_venda.venda_id inner join livros on itens_venda.livro_id = livros.id;

select autores.nome, livros.titulo from autores left join livros on autores.id = livros.autor_id;

select clientes.nome, itens_venda.quantidade from clientes inner join vendas on clientes.id = vendas.cliente_id inner join itens_venda on vendas.id = itens_venda.venda_id;

select clientes.nome, vendas.data, livros.titulo, livros.categoria, autores.nome, itens_venda.quantidade from vendas inner join clientes on vendas.cliente_id = clientes.id inner join itens_venda on vendas.id = itens_venda.venda_id join livros on itens_venda.livro_id = livros.id inner join autores on livros.autor_id = autores.id;