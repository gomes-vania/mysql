create database db_pizzaria_legal;

use db_pizzaria_legal;

/* 1 - Crie a tabela tb_categorias e determine pelo menos 2 atributos, 
além da Chave Primária, relevantes para classificar as pizzas.
*/

create table tb_categorias (
	id_categoria bigint not null auto_increment primary key,
    tamanho varchar(25) not null,
    sabor varchar(30) not null
);

/* 2 - Crie a tabela tb_pizzas e determine 4 atributos,
 além da Chave Primária, relevantes aos produtos da pizzaria.
 
 3 - Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
 */
 
create table tb_pizza (
	id_pizza  bigint not null auto_increment primary key,
    nome varchar(30) not null,
    preco decimal(4,2) not null,
    quantidade int not null,
    borda varchar(30) not null,
    id_categoria bigint,
    foreign key (id_categoria) references tb_categorias(id_categoria)
);

/* 4 - Insira 5 registros na tabela tb_categorias. */

insert into tb_categorias (tamanho, sabor) values 
("Grande", "Mussarela");

insert into tb_categorias (tamanho, sabor) values 
("Pequena", "Especial da Casa");

insert into tb_categorias (tamanho, sabor) values 
("Média", "Premium");

insert into tb_categorias (tamanho, sabor) values 
("Pequena", "Doce");

insert into tb_categorias (tamanho, sabor) values 
("Média", "Gourmet");

/* Insira 8 registros na tabela tb_pizzas,
 preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
 */
 
insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Mussarela", 59.90, 1, "Requeijão", 1);

insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Calabreza", 70.00, 1, "Requeijão", 3);

insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Calzone", 95.00, 1, "Chocolate", 2);

insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Morango com Chocolate", 95.00, 2, "Chocolate", 5);

insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Romeu e Julieta", 50.00, 1, "Chocolate", 5);

insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Presunto e Queijo", 60.00, 2, "Sem borda", 1);

insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Bacon", 70.00, 1, "Sem borda", 1);

insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Banofe", 88.00, 1, "Chocolate", 5);       

insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Bacon", 40.00, 1, "Cheder", 1);  

insert into tb_pizza (nome, preco, quantidade, borda, id_categoria) values
("Banofe", 150.00, 3, "Chocolate", 5);      

update tb_categorias 
set sabor = "Doce e Salgada"
where id_categoria =2;

update tb_categorias
set sabor = "Tradicional"
where id_categoria = 1;

select * from tb_categorias;
select * from tb_pizza;

/*  6 - Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00. */

select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco < 45.00;

/* 7 - Faça um SELECT que retorne todas as pizzas cujo valor esteja 
no intervalo R$ 50,00 e R$ 100,00.
*/

select * from tb_pizza where preco >= 50.00 and preco <= 100.00;

/* 8 - Faça um SELECT utilizando o operador LIKE, 
buscando todas as pizzas que possuam a letra M no atributo nome.
*/

select * from tb_pizza where nome like "M%";

/* 9 - Faça um SELECT utilizando a cláusula INNER JOIN,
 unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
 */
 
 select * 
 from tb_pizza
 inner join tb_categorias
 on tb_pizza.id_categoria = tb_categorias.id_categoria;
 
 /* 10 - Faça um SELECT utilizando a cláusula INNER JOIN,
 unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, 
 onde traga apenas as pizzas que pertençam a uma categoria específica 
 (Exemplo: Todas as pizzas que são doce).
 */
 
select *
from tb_pizza
inner join tb_categorias
on tb_pizza.id_categoria = tb_categorias.id_categoria
where sabor = "Tradicional";

 
 
