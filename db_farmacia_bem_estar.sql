-- Atividade 3

CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria varchar(255),
    tipo varchar(255),
	disponivel boolean,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("midicamentos", "injetável", false);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("midicamentos", "injetável", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("midicamentos", "Oral", false);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("midicamentos", "Oral", true);

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
    numero bigint,
    estoque boolean,
    quantidade int,
    preco int,
    entrega boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id) -- Esse codigo faz o link com a outra tabela
);

INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Diprospan", 27856, true, 22, 32.66, true, 1);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Insulina", 5267, true, 32, 85.95, true, 2);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Atesto", 3765, true, 5, 286.11, true, 1);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Benzetacil", 8597, true, 10, 14.50, true, 1);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Venvanse", 326, true, 15, 331.95, true, 3);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Roacutan", 3768, true, 70, 146.03, true, 4);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Dramin", 8635, true, 100, 9.74, true, 4);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Annita", 8341, true, 150, 48.99, true, 4);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id WHERE categoria LIKE "midicamentos";