-- Atividade 5

CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria varchar(255),
    tipo varchar(255),
	disponivel boolean,
    
    primary key(id)
);

INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pisos e revestimentos", "Argamassas", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pisos e revestimentos", "ceramica", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pisos e revestimentos", "revestimento", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Área Externa", "Jardin", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Portas e Janelas", "Porta", true);


SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
    tipo varchar(255),
    estoque boolean,
    quantidade int,
    preco int,
    entrega boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id) -- Esse comando vai faz o link com a outra tabela
);

SELECT * FROM tb_produto;
 
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("porselanato", "prime", true, 250, 250, true, 2);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("porselanato", "prime", true, 500, 200, true, 2);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("porselanato", "prime", true, 500, 150, true, 2);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Porta madeira", "siples", true, 55, 340, true, 5);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Porta aluminio", "prime", true, 15, 400, true, 5);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Porta madeira", "prime", true, 10, 550, true, 5);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("cerca de arrame", "prime", true, 22, 22, true, 4);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("cerca de plastico", "prime", true, 22, 60, true, 3);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id WHERE categoria LIKE "Pisos e revestimentos";