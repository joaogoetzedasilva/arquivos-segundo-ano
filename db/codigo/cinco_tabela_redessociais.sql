create database redessociais;
use redessociais;

create table tiktok(
id int primary key auto_increment,
plataforma  varchar(100) not null,
usuarios_ativos_em_bilhao int not null,
ano_de_lancamento int not null
);

insert into tiktok (plataforma, usuarios_ativos_em_bilhao, ano_de_lancamento)
values('tiktok', 1, 2016);

create table facebook(
id int primary key auto_increment,
plataforma  varchar(100) not null,
usuarios_ativos_em_bilhao int not null,
ano_de_lancamento int not null
);

insert into facebook (plataforma,usuarios_ativos_em_bilhao,ano_de_lancamento)
values('facebook',2,2004);

create table instagram(
id int primary key auto_increment,
plataforma  varchar(100) not null,
usuarios_ativos_em_bilhao int not null,
ano_de_lancamento int not null
);

insert into instagram (plataforma,usuarios_ativos_em_bilhao,ano_de_lancamento)
values('instagram',1,2010);

create table twitter(
id int primary key auto_increment,
plataforma  varchar(100) not null,
usuarios_ativos_em_bilhao float not null,
ano_de_lancamento int not null
);

insert into twitter (plataforma,usuarios_ativos_em_bilhao,ano_de_lancamento)
values('twitter',0.3,2006);

create table LinkedIn(
id int primary key auto_increment,
plataforma varchar(100) not null,
usuarios_ativos_em_bilhao float not null,
ano_de_lancamento int not null
);

insert into LinkedIn (plataforma,usuarios_ativos_em_bilhao,ano_de_lancamento)
values('LinkedIn',0.8,2003);
