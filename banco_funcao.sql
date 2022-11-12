/*Crie uma função que some todos os clientes cadastrados em uma loja durante um dia.*/

/*Criar Banco de Dados*/
create database bd_loja;

/*Criar a tabela*/
create table cadastro(
id_cliente int(3) not null auto_increment,
nome varchar(20) not null,
s_nome varchar (20),
nascimento date,
sexo enum ('M','F'), 
cidade varchar(10),
data_cadastro date,
primary key (id_cliente)
)default charset = utf8;

/*Inserindo os dados na tabela*/
insert into cadastro values
(default, 'Fernando', 'Mota', 19781125, 'M', 'Olinda', 20221112),
(default, 'João', 'Borba', 19771125, 'M', 'Paulista', 20221112),
(default, 'Cibele', 'Santos', 19951125, 'F', 'Recife', 20221111),
(default, 'Flavia', 'Gomes', 19991125, 'F', 'Recife', 20221111),
(default, 'Hugo', 'Silva', 20001125, 'M', 'Escada', 20221111),
(default, 'Sandro', 'Galeno', 20011125, 'M', 'Exu', 20221110),
(default, 'Eugênia', 'Souto', 20051125, 'F', 'Palmares', 20221110),
(default, 'Cristina', 'Mota', 19851125, 'F', 'Olinda', 20221110);

/*Criando a funçao*/
CREATE FUNCTION fn_relatorioCadastro(varData DATE)
RETURNS INT
RETURN
(SELECT count(id_cliente) AS idCadastrado 
FROM cadastro
WHERE data_cadastro = varData);

/*Chamando a função*/
SELECT fn_relatorioCadastro(20221110);
