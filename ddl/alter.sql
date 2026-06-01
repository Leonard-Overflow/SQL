CREATE TABLE exemplo_fk(
    id_da_unidade INT NOT NULL
    vendas_na_unidade INT NOT NULL
);

CREATE TABLE exemplo(
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(5, 2 ) NOT NULL
    unidade ENUM('Campinas', 'Sao Paulo', 'Rio de Janeiro', 'Curitiba') NOT NULL
    status BOOLEAN NOT NULL,
    data_de_contratacao DATE DEFAULT '2019-12-14' NOT NULL
    id_unidade INT NOT NULL
    CONSTRAINT fk_unidade FOREIGN KEY (id_unidade) REFERENCES exemplo_fk(id_da_unidade) # Evitar normalmente
);

ALTER TABLE exemplo
ADD COLUMN telefone VARCHAR(15) NOT NULL AFTER salario,
ADD COLUMN cpf INT FIRST;

ALTER TABLE exemplo
MODIFY COLUMN cpf INT NOT NULL,
CHANGE COLUMN telefone celular VARCHAR(15);

ALTER TABLE exemplo
DROP COLUMN data_contratacao;

ALTER TABLE exemplo
ADD FOREIGN KEY (vendas_na_unidade) REFERENCES usuario(id),
DROP FOREIGN KEY id_unidade;

ALTER TABLE exemplo
ADD INDEX idx_email (email);
RENAME TO clientes

