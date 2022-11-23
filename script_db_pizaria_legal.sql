create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
	id_categoria bigint not null auto_increment primary key,
    tamanho varchar(25) not null,
    sabor varchar(30) not null
);

create table tb_pizza (
	id_pizza  bigint not null auto_increment primary key,
    nome varchar(30) not null,
    preco decimal(4,2) not null,
    quantidade int not null,
    borda varchar(30) not null,
    id_categoria bigint,
    foreign key (id_categoria) references tb_categorias(id_categoria)
);

insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Mussarela", 59,90, 1, "Requeijão", 1),
("Calabreza", 70,00, 1, "Requeijão", 3),
("Calzone", 95,00, 1, "Chocolate", 2),
("Morango com Chocolate", 100,00, 2, "Chocolate", 5),
("Romeu e Julieta", 150,00, 1, "Chocolate", 5),
("Presunto e Queijo", 60,00, 2, "Sem borda", 1),
("Bacon", 70,00, 1, "Sem borda", 1),
("Banofe", 100,00, 1, "Chocolate", 5);

insert into tb_categorias (tamanho, sabor) values 
("Grande", "Mussarela"),
("Pequena", "Especial da Casa"),
("Média", "Premium"),
("Pequena", "Doce"),
("Média", "Gourmet");

update tb_categorias 
set sabor = "Doce e Salgada"
where id_categoria =2;

select * from tb_categorias;
select * from tb_pizza;