CREATE TABLE exemplo(
    id int(5) PRIMARY KEY NOT-NULL,
    nome varchar(100) NOT-NULL,
    salario DECIAMAL(5, 2 ) NOT-NULL
    unidade ENUM('Campinas', 'Sao Paulo', 'Rio de Janeiro', 'Curitiba') NOT-NULL
    status BOOLEAN(1) NOT-NULL,
    data_de_contratacao DATE(2019-12-14) NOT-NULL
);

DROP TABLE exemplo;

# Versão segura
DROP TABLE IF EXISTS exemplo;
/*
Se houver tabelas com chaves estrangeiras que apontam para a tabela o MySQL retornara erro.
Exclua as chaves ou desabilite a verificação temporariamente.
*/