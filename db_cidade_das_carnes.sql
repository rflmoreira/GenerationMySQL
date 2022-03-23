-- Atividade 4

CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria varchar(255),
    tipo varchar(255),
	disponivel boolean,
    
    primary key(id)
);

INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("carne bovina", "a", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("carne bovina", "b", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("carne suina", "a", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("carne suina", "b", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("carne avina", "a", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("carne avina", "b", true);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    corte varchar(255),
    peso bigint,
    estoque boolean,
    quantidade int,
    preco int,
    entrega boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id) -- Esse codigo faz o link com a outra tabela
);

INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("maminha", 50, true, 4, 45, true, 1);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("fraudinha", 45, true, 5, 30, true, 2);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("costela", 60, true, 10, 60, true, 1);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("assinha", 50, true, 22, 65, true, 6);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("coxa", 50, true, 22, 40, true, 5);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("sobrecoxa", 50, true, 22, 33, true, 5);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("costela", 50, true, 22, 30, true, 3);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("bife", 50, true, 22, 60, true, 3);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id WHERE categoria LIKE "carne bovina";