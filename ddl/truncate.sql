CREATE TABLE exemplo(
    id int(5) PRIMARY KEY NOT-NULL,
    nome varchar(100) NOT-NULL,
    salario DECIAMAL(5, 2 ) NOT-NULL
    unidade ENUM('Campinas', 'Sao Paulo', 'Rio de Janeiro', 'Curitiba') NOT-NULL
    status BOOLEAN(1) NOT-NULL,
    data_de_contratacao DATE(2019-12-14) NOT-NULL
);

TRUNCATE TABLE exemplo
/*
Remove os dados, mas mantém a estrutura.
Não usa o WHERE, remove todos os dados sempre.
Reseta o AUTO-INCREMENT.
Mais rápido.
Não dispara TRIGGERS de delete.
NÃO PODE SER DESFEITO
*/