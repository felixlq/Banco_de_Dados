
/*BANCO DE DADOS*/
create database bd_loja;

/*TABELA*/
create table compra(
id_compra int (3) not null auto_increment,
produto varchar (50) not null,
valor decimal (5,2),
quantidade int (3),
data_compra date,
primary key (id_compra)
)default charset = utf8;

/*INPUT DE DADOS*/
insert into compra values
(default, 'cimento', 32.00, 25, 20221112),
(default, 'areia', 15.50, 80, 20221112),
(default, 'pregos', 8.00, 1000, 20221112),
(default, 'cimento', 32.00, 60, 20221112),
(default, 'tinta', 350.00, 5, 20221112),
(default, 'parafuso', 8.00, 1000, 20221112),
(default, 'areia', 15.5, 50, 20221113),
(default, 'pregos', 8.00, 500, 20221113),
(default, 'madeira', 10.00, 100, 20221113),
(default, 'conreto', 60.00, 50, 20221114),
(default, 'tijolo', 32.00, 3000, 20221114),
(default, 'brita', 25.3, 90, 20221114),
(default, 'concreto', 60.00, 50, 20221115),
(default, 'ferro', 92.00, 25, 20221115),
(default, 'ferro', 92.00, 25, 20221115);

/*PROCEDURE*/
create procedure pr_compraDia (varData date)
select produto, quantidade, data_compra from compra
where data_compra = varData;

/*CHAMADA DO PROCEDURE*/
CALL pr_compraDia(20221112);