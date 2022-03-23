-- Atividade 2

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria varchar(255),
    tipo varchar(255),
    disponivel boolean,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Salgada", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Salgada", false);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Doce", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Doce", false);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Vegana", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Vegana", false);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
    preco int,
    preAssada boolean,
    quantidade int,
    tamanho int,
    disponivel boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id) -- Esse codigo vai faz o link com a outra tabela
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Portuguesa", 55, true, 1, 3, true, 1);
INSERT INTO tb_pizzas (nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Frango", 35, true, 1, 2, true, 1);
INSERT INTO tb_pizzas (nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Lombinho", 31, true, 2, 3, true, 1);
INSERT INTO tb_pizzas (nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Brigadeiro", 44, false, 2, 2, true, 3);
INSERT INTO tb_pizzas (nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("MorangoNutella", 44, true, 1, 3, true, 1);
INSERT INTO tb_pizzas (nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Frango", 23, true, 2, 3, true, 5);
INSERT INTO tb_pizzas (nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Lombinho", 46, true, 1, 2, true, 5);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco >= 29 AND preco <= 60;
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_pizzas.categoria_id = tb_categoria.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_pizzas.categoria_id = tb_categoria.id WHERE tipo LIKE "Doce";