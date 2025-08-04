INSERT INTO produtos (nome, categoria, preco, estoque, data_cadastro) VALUES
('Mouse Logitech M170', 'Periféricos', 89.90, 30, '2025-05-01'),
('Teclado Mecânico Redragon', 'Periféricos', 249.90, 20, '2025-05-03'),
('Monitor LG 24"', 'Monitores', 899.00, 15, '2025-04-28'),
('Notebook Acer Aspire 5', 'Computadores', 2999.99, 8, '2025-05-05'),
('Cabo HDMI 2m', 'Acessórios', 29.90, 50, '2025-05-02'),
('Pen Drive 64GB Sandisk', 'Armazenamento', 59.90, 100, '2025-04-30'),
('HD Externo 1TB Seagate', 'Armazenamento', 349.90, 25, '2025-05-04'),
('Webcam Logitech C920', 'Periféricos', 459.90, 5, '2025-05-06'),
('Mousepad Gamer XXL', 'Acessórios', 79.90, 40, '2025-05-01'),
('SSD Kingston 240GB', 'Armazenamento', 189.90, 60, '2025-04-27');

INSERT INTO clientes (nome, email, cidade, data_cadastro) VALUES
('Maria da Silva', 'maria@gmail.com', 'Porto Alegre', '2025-05-01'),
('João Pereira', 'joao.p@gmail.com', 'Canoas', '2025-05-02'),
('Ana Clara Souza', 'ana.souza@gmail.com', 'São Leopoldo', '2025-05-03'),
('Carlos Eduardo', 'carlos.e@gmail.com', 'Porto Alegre', '2025-05-04'),
('Fernanda Lima', 'fernanda.l@gmail.com', 'Pelotas', '2025-05-05'),
('Luciana Ribeiro', 'luciana.r@gmail.com', 'Novo Hamburgo', '2025-05-06'),
('Ricardo Alves', 'ricardo.a@gmail.com', 'Caxias do Sul', '2025-05-07');


INSERT INTO pedidos (cliente_id, produto_id, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-05-07'),
(2, 4, 1, '2025-05-07'),
(3, 2, 1, '2025-05-08'),
(1, 6, 3, '2025-05-09'),
(5, 3, 1, '2025-05-10'),
(4, 10, 2, '2025-05-10'),
(6, 5, 5, '2025-05-11'),
(7, 7, 1, '2025-05-12'),
(2, 1, 1, '2025-05-12'),
(3, 9, 2, '2025-05-13');



SELECT * FROM produtos;

SELECT nome, preco FROM produtos WHERE estoque < 20;

SELECT * FROM produtos WHERE categoria = 'Periféricos' ORDER BY nome;

SELECT * FROM produtos WHERE preco  > 50  < 200;

SELECT * FROM produtos ORDER BY preco DESC;