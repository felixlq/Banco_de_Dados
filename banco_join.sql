create database CONJUNTOS;

create table letras(
id int (2) auto_increment not null,
nome varchar (5) not null,
ligacao int (2),
primary key (id)
)default charset = utf8; 

create table numeros(
id_num int (2) auto_increment not null,
nome int (2) not null,
primary key (id_num)
)default charset = utf8;

alter table letras
add foreign key (ligacao)
references numeros(id_num);

insert into numeros values
(default, 9),
(default, 5),
(default, 6),
(default, 2),
(default, 4);

insert into letras values
(default, "A", 3),
(default, "B", 2),
(default, "C", 1),
(default, "D", 3),
(default, "E", 0),
(default, "F", 0);


/*InnerJoin*/
select letras.id, letras.nome, numeros.nome
from letras join numeros
on letras.ligacao = numeros.id_num;

/*RightJoin*/
select letras.id, letras.nome, numeros.nome
from letras right join numeros
on letras.ligacao = numeros.id_num;

/*LeftJoin*/
select letras.id, letras.nome, numeros.nome
from letras left join numeros
on letras.ligacao = numeros.id_num;
