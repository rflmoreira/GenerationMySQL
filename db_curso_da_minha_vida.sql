-- Atividade 6

CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria varchar(255),
    tipo varchar(255),
    disponivel boolean,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("curso", "angular", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("curso", "java", false);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("curso", "c++", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("curso", "rust", false);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("curso", "python", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("curso", "react", false);

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
    inicio varchar(255),
	preco int,
	disponivel boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id) -- Esse codigo vai faz o link com a outra tabela
);

SELECT * FROM tb_cursos;

INSERT INTO tb_cursos (nome, inicio, preco, disponivel, categoria_id) VALUES ("react", "primeiro", 500, true, 1);
INSERT INTO tb_cursos (nome, inicio, preco, disponivel, categoria_id) VALUES ("c++", "primeiro", 400, true, 2);
INSERT INTO tb_cursos (nome, inicio, preco, disponivel, categoria_id) VALUES ("angular", "segundo", 300, true, 2);
INSERT INTO tb_cursos (nome, inicio, preco, disponivel, categoria_id) VALUES ("rust", "segundo", 300, true, 1);
INSERT INTO tb_cursos (nome, inicio, preco, disponivel, categoria_id) VALUES ("python", "primeiro", 600, true, 3);
INSERT INTO tb_cursos (nome, inicio, preco, disponivel, categoria_id) VALUES ("java", "primeiro", 1000, true, 4);
INSERT INTO tb_cursos (nome, inicio, preco, disponivel, categoria_id) VALUES ("react", "terceiro", 500, true, 1);
INSERT INTO tb_cursos (nome, inicio, preco, disponivel, categoria_id) VALUES ("react", "quarto", 500, true, 1);

SELECT * FROM tb_cursos WHERE preco > 500;
SELECT * FROM tb_cursos WHERE preco >= 600 AND preco <= 1000;
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT * FROM tb_cursos INNER JOIN tb_categoria ON tb_cursos.categoria_id = tb_categoria.id;
SELECT * FROM tb_cursos INNER JOIN tb_categoria ON tb_cursos.categoria_id = tb_categoria.id WHERE tipo LIKE "java";