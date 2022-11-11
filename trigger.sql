/*
Você deve criar uma tabela para executar uma trigger que relacione algum comando, como: insert, select, delete ou update.
*/

create database loja;
use loja;

create table produto (
idProduto INT not null auto_increment,
Nome_produto varchar(25) null,
Preco decimal (10,2) null,
preco_desconto decimal (10,2) null,
primary key (idProduto)
)default char set = utf8;


/*Trigger*/
create trigger tr_desconto Before insert
on produto
for each row
set NEW.preco_desconto = (NEW.preco * 0.75);


Insert into produto (nome_produto, preco)
values ('Desktop MacM1', 8500.00);


Select * From produto;

/*

idProduto   Nome_produto    Preco       Preco_desconto
1	        Desktop MacM1	8500.00	    6375.00

*/			