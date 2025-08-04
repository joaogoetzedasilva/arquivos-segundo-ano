create database livraria;
use livraria;

-- Tabela autores
CREATE TABLE autores (
    id_autor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(45),
    data_nascimento DATE
);

-- Tabela categorias
CREATE TABLE categorias (
    id_categoria  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(45) NOT NULL
);


-- Tabela livros
CREATE TABLE livros (
    id_livro  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    codigo_isbn_livro VARCHAR(100),
    quantidade_livros INT,
    autores_id_autor INT NOT NULL,
    categorias_id_categoria INT NOT NULL,
    FOREIGN KEY (autores_id_autor) REFERENCES autores(id_autor),
    FOREIGN KEY (categorias_id_categoria) REFERENCES categorias(id_categoria)
);

-- Tabela emprestimo_livro
CREATE TABLE emprestimo_livro (
    id_emprestimo_livro  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    data_entrega DATE,
    id_cadastro INT NOT NULL,
    FOREIGN KEY (id_cadastro) REFERENCES cadastro(id_cadastro)
);

-- Tabela associativa livros_has_emprestimo_livro (relacionamento N:N entre livros e empréstimos)
CREATE TABLE livros_has_emprestimo_livro (
    livros_id_livro INT NOT NULL,
    emprestimo_livro_id_emprestimo_livro INT NOT NULL,
    PRIMARY KEY (livros_id_livro, emprestimo_livro_id_emprestimo_livro),
    FOREIGN KEY (livros_id_livro) REFERENCES livros(id_livro),
    FOREIGN KEY (emprestimo_livro_id_emprestimo_livro) REFERENCES emprestimo_livro(id_emprestimo_livro)
);

CREATE TABLE cadastro (
    id_cadastro INT AUTO_INCREMENT PRIMARY KEY,
    NomeCompleto VARCHAR(100),
    NomeUsuario VARCHAR(50),
    endereço varchar(45),
    telefone varchar(45),
    email VARCHAR(100),
    cpf VARCHAR(45) UNIQUE,
    senha VARCHAR(100)
);

INSERT INTO cadastro (NomeCompleto, NomeUsuario, email, cpf, senha)
VALUES ('João Goetze', 'joao', 'joao@email.com', '123.456.789-00', 'Senha123!');
