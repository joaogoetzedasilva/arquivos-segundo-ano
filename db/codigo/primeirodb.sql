create database professores;
use professores;

create table professores(
id int primary key auto_increment,
nome  varchar(100) not null,
formacao varchar(100) not null
);


insert into professores(nome,idade,salario,formacao)
values('jorge',38,4000,'ed._fisica');

create database alunos;
use alunos;

create table alunos(
id int primary key auto_increment,
nome  varchar(100) not null,
idade int,
formacao varchar(100) not null
);


insert into professores(nome,idade,salario,formacao)
values('jorge',38,4000,'ed._fisica');

