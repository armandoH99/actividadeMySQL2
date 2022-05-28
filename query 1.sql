CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

Create table tb_classes (
id bigint(5) auto_increment,
classe varchar(15),
poder decimal(10),
primary key(id)

);


Create table tb_personagens(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    classe varchar(15),    
    poder decimal(15),
    classe_id bigint,
    primary key(id),
    foreign key (classe_id) references tb_classes(id)
    
    
    );
  -- popular personagens 
insert into tb_personagens(classe, poder, classe_id) Values ("mage", 2100, 1);
insert into tb_personagens(classe, poder, classe_id) Values ("warrior", 1900, 2);
insert into tb_personagens(classe, poder, classe_id) Values ("priest", 2400, 3);
insert into tb_personagens(classe, poder, classe_id) Values ("monk", 2200, 4);
insert into tb_personagens(classe, poder, classe_id) Values ("rogue", 1700, 5);
insert into tb_personagens(classe, poder, classe_id) Values ("priest", 2400, 3);
insert into tb_personagens(classe, poder, classe_id) Values ("monk", 2200, 4);
insert into tb_personagens(classe, poder, classe_id) Values ("rogue", 1700, 5);
  -- popular classes
insert into tb_classes(classe, poder) Values ("mage", 2100);
insert into tb_classes(classe, poder) Values ("warrior", 1900);
insert into tb_classes(classe, poder) Values ("priest", 2400);
insert into tb_classes(classe, poder) Values ("monk", 2200);
insert into tb_classes(classe, poder) Values ("rogue", 1700);


SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens where poder > 2000;
SELECT * FROM tb_personagens where poder BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens where classe LIKE "%C%";
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id; 
SELECT tb_personagens.classe AS classe, classe_id AS monk FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE classe_id = 4
