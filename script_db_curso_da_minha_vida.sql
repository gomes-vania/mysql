create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

drop database db_curso_da_minha_vida;

/* 
1 - Crie a tabela tb_categorias e determine pelo menos 2 atributos,
 além da Chave Primária, relevantes para classificar os produtos.
 */
 
 create table tb_categorias (
	id_tb_categoria bigint auto_increment not null primary key,
    modalidade varchar(50) not null,
    formato varchar(50) not null
 );
 
 /* 
 2 - Crie a tabela tb_cursos e determine 4 atributos,
 além da Chave Primária, relevantes aos produtos da farmácia.
 
 3 - Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.
 */
 
 create table tb_curso (
	id_tb_curso bigint auto_increment not null primary key,
    nome varchar(50) not null,
    duracao varchar(50),
    carga_horaria varchar(50),
    preco_mensalidade decimal(10,2),
    regime_matricula varchar(50),
    id_tb_categoria bigint,
    foreign key (id_tb_categoria) references tb_categorias (id_tb_categoria)
 );
  
 /* Insira 5 registros na tabela tb_categorias. */
 
insert into tb_categorias (modalidade, formato) values ("Graduação", "Presencial");
insert into tb_categorias (modalidade, formato) values ("EAD", "Presencial/Online");
insert into tb_categorias (modalidade, formato) values ("EAD", "Online");
insert into tb_categorias (modalidade, formato) values ("Tecnólogos", "Presencial");
insert into tb_categorias (modalidade, formato) values ("Técnicos", "Presencial");

select * from tb_categorias;
select * from tb_curso;

/* 5 - Insira 8 registros na tabela tb_cursos, 
preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
*/

insert into tb_curso (nome, duracao, carga_horaria, preco_mensalidade, regime_matricula, id_tb_categoria)
values ("Sistemas Para Internet", "3 anos", "320 horas", 550.00, "Semestral", 1);

insert into tb_curso (nome, duracao, carga_horaria, preco_mensalidade, regime_matricula, id_tb_categoria)
values ("Análise e Desenvolvimento de Sistemas", "2 anos", "200 horas", 450.00, "Semestral", 4);                                                          
 
 insert into tb_curso (nome, duracao, carga_horaria, preco_mensalidade, regime_matricula, id_tb_categoria)
values ("Técnico e Manutenção de Computadores", "1 ano", "150 horas", 250.00, "Semestral", 5);   

insert into tb_curso (nome, duracao, carga_horaria, preco_mensalidade, regime_matricula, id_tb_categoria)
values ("Letras", "3 anos", "400 horas", 550.00, "Semestral", 2);    

insert into tb_curso (nome, duracao, carga_horaria, preco_mensalidade, regime_matricula, id_tb_categoria)
values ("Quimíca", "3 anos", "500 horas", 500.00, "Semestral", 2);    

insert into tb_curso (nome, duracao, carga_horaria, preco_mensalidade, regime_matricula, id_tb_categoria)
values ("Pedagogia", "3 anos", "300 horas", 300.00, "Semestral", 3); 

insert into tb_curso (nome, duracao, carga_horaria, preco_mensalidade, regime_matricula, id_tb_categoria)
values ("Biologia", "4 anos", "600 horas", 600.00, "Semestral", 1); 

insert into tb_curso (nome, duracao, carga_horaria, preco_mensalidade, regime_matricula, id_tb_categoria)
values ("Recursos Humanos", "2 anos", "250 horas", 300.00, "Semestral", 5); 

insert into tb_curso (nome, duracao, carga_horaria, preco_mensalidade, regime_matricula, id_tb_categoria)
values ("Publicidade", "2 anos", "200 horas", 250.00, "Semestral", 5); 

/* 6 - Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00. */

select * from tb_curso where preco_mensalidade > 500.00;

/* 7 - Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00. */

select * from tb_curso where preco_mensalidade >= 600.00 and preco_mensalidade <= 1000.00;

/* 8 - Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome. */

select * from tb_curso where nome like "J%";

/* 9 - Faça um SELECT utilizando a cláusula INNER JOIN, 
unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
*/

select *
from tb_curso
inner join tb_categorias
on tb_curso.id_tb_categoria = tb_categorias.id_tb_categoria;

/* 10 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, 
onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).
*/

select *
from tb_curso
inner join tb_categorias
on tb_curso.id_tb_categoria = tb_categorias.id_tb_categoria
where tb_categorias.modalidade = "Graduação";
