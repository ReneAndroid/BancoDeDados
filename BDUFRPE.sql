create database cadastro
default character set utf8
default collate utf8_genreal_ci;
use cadastro;
create table pessoas (
id int not null auto_increment,
nome varchar (30) not null,
nascimento date,
sexo enum ('M', 'F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar (20) DEFAULT 'Brasil',
primary key (id)
)DEFAULT CHARSET = utf8;

insert into pessoas
(nome, nascimento, sexo, peso,altura, nacionalidade)
values
('godofrendo ' , '1984-01-02 ' ,'M' ,'78.5 ' ,'1.83', 'Brasil');

select *from renezao;

#Alterar e adicionar a coluna profissão na tabela pessoas 
alter table pessoas
#after nome depois do nome
#ou coloca first para primeiro
add column profissao varchar(10) after nome;

desc ReneZao;
#vamos renomear uma tabela
alter table pessoas
rename to ReneZao;
#Esse código é para atualizar a linha da tabela
update renezao
set nome = 'ReneFredo'
where id = 1;


use cadastro;
create table cursos (
id int (200),
nome varchar (30) not null,
descricao varchar(2000) not null,
carga int (200) not null,
totaulas int (200) not null,
ano int (200) not null
)DEFAULT CHARSET = utf8;


insert into cursos 
(id,nome, descricao,carga,totaulas,ano)
values
(1,'HTML5','Curso de HTML5',40,37,2014),
(2,'Algoritmos','Lógica de Programação',20,15,2014),
(3,'Photoshop5','Dicas de Photoshop CC',10,8,2014),
(4,'PHP','Curso de PHP para iniciantes',40,20,2015),
(5,'Java','Introdução à Linguagem Java',40,29,2015),
(6,'MySQL','Bancos de Dados MySQL',30,15,2016),
(7,'Word','Curso completo de Word',40,30,2016),
(8,'Python','Curso de Python',40,18,2017),
(9,'POO','Curso de Programação Orientada a Objetos',60,35,2016),
(10,'Excel','Curso completo de Excel',40,30,2017);

# manipulações
#select * from cursos
#order by nome desc;
#select ano,nome,carga from cursos
#order by ano, nome;







