-- Atividade 1

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT,
    casse varchar(255),
    lvl int,
    habilidade varchar(255),
    
    primary key(id)
);

ALTER TABLE tb_classe CHANGE casse classe varchar(255); -- Alterando variavel da tabela

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
    raca varchar(255),
    vida int,
    defesa int,
    ataque int,
    magia int,
    calsse_id bigint,
    
    primary key(id),
    foreign key(calsse_id) references tb_classe(id) -- Esse comando vai faz o link com a outra tabela
);

SELECT * FROM tb_personagem;
SELECT * FROM tb_classe;

INSERT INTO tb_classe(classe, lvl, habilidade) VALUES ("Paladino", 5, "Templatio");
INSERT INTO tb_classe(classe, lvl, habilidade) VALUES ("Mago", 3, "Templatio");
INSERT INTO tb_classe(classe, lvl, habilidade) VALUES ("Ladrao", 8, "Templatio");
INSERT INTO tb_classe(classe, lvl, habilidade) VALUES ("Bardo", 100, "Templatio");
INSERT INTO tb_classe(classe, lvl, habilidade) VALUES ("Aruqeiro", 7, "Templatio");

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Bob", "Ork", 60, 4200, 8000, 100, 1);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Renta", "Elfo", 80, 3500, 500, 3);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Lucas", "Humano", 90, 8000, 8000, 1000, 4);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Joao", "Humano", 40, 2300, 6500, 500, 5);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Maria", "Anao", 10, 1100, 3200, 150, 2);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Madalena", "Elfo", 90, 6300, 2100, 1110, 3);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Pedro", "Humano", 30, 6400, 1200, 100, 2);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Judas", "Ork", 22, 2600, 4300, 400, 1);

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%C%";
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.id = tb_classe.id; -- Mostras os dados relacionados entre tabelas

ALTER TABLE tb_personagem CHANGE calsse_id classe_id bigint;

SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_personagem.classe_id = tb_classe.id WHERE classe LIKE "Mago";