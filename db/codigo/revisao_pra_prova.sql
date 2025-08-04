create database escola2025;
use escola2025;

create table alunos (
id_aluno int primary key auto_increment,
nome  varchar(100) not null,
email varchar(100) not null
);

create table matriculas (
id_matricula int primary key auto_increment,
id_aluno int,
FOREIGN KEY (id_aluno) REFERENCES id_aluno(id),
curso varchar(100) not null,
data_matricula date
);

insert into alunos ( nome,email )values
('jorge','luciano');

insert into matriculas ( id_aluno,curso )values
(2,'TI')

