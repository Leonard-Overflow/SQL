CREATE DATABASE db_insert;
USE db_insert;

CREATE TABLE exemplo(
    nome VARCHAR(100) NOT NULL PRIMARY KEY,
    salario DECIMAL(7,2) NOT NULL
);

# Insert into
INSERT INTO exemplo(nome, salario)
VALUES
("Leonardo", 4500.00),
("Rafael", 3500.00);

# Insert ignore
INSERT IGNORE INTO exemplo(nome, salario)
VALUES ("Leonardo, 5000.00");
# Sem o ignore iria resultar em erro, pois o nome(primary key) ja foi usado

# On duplicate key
INSERT INTO exemplo(nome, salario)
VALUE("Rafael", 6000.00)
ON DUPLICATE KEY UPDATE salario = 6000;
# Verifica se ha uma linha com a mesma vahve perimaria e, nesse caso, atualiza o se nao existir