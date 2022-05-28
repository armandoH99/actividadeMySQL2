CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

Create table tb_pizzas (
id bigint(5) auto_increment,
tamanho varchar(15),
prezo decimal,
primary key(id)

);


Create table tb_categorias(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    sabor varchar(15), -- doce o salgada   
    disponivel bigint,
    pizza_id bigint,
    primary key(id),
    foreign key (pizza_id) references tb_pizzas(id)
    
    );
  -- popular tb_categorias 
insert into tb_categorias(nome, sabor, disponivel, pizza_id) Values ("calbresa", "doce", 1, 1);
insert into tb_categorias(nome, sabor, disponivel, pizza_id) Values ("portuguesa", "salgada", 1, 2);
insert into tb_categorias(nome, sabor, disponivel, pizza_id) Values ("abacaxi","salgada", 1, 3);
insert into tb_categorias(nome, sabor, disponivel, pizza_id) Values ("peruana", "salgada", 1, 2);
insert into tb_categorias(nome, sabor, disponivel, pizza_id) Values ("frango", "salgada", 1, 3);
insert into tb_categorias(nome, sabor, disponivel, pizza_id) Values ("presunto e queijo", "salgada", 1, 2);
insert into tb_categorias(nome, sabor, disponivel, pizza_id) Values ("calbresa", "salgada", 1, 3);
insert into tb_categorias(nome, sabor, disponivel, pizza_id) Values ("calbresa", "doce", 1, 2);

  -- popular tb_pizzas
insert into tb_pizzas(tamanho, prezo) Values ("grande", 60);
insert into tb_pizzas(tamanho, prezo) Values ("media", 40);
insert into tb_pizzas(tamanho, prezo) Values ("pequena", 30);



SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;
SELECT * FROM tb_categorias where pizza_id = 1;
SELECT * FROM tb_categorias where pizza_id <= 1;
SELECT * FROM tb_categorias where nome LIKE "%N%";
SELECT * FROM tb_categorias INNER JOIN tb_pizzas ON tb_pizzas.id = tb_categorias.pizza_id;
SELECT tb_categorias.nome AS nomeDaPizza, pizza_id AS media FROM tb_categorias INNER JOIN tb_pizzas ON tb_pizzas.id = tb_categorias.pizza_id WHERE pizza_id = 2