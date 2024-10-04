CREATE DATABASE funcionarios_1e;
use funcionarios_1e;

CREATE TABLE funcionario(
cod_func int auto_increment primary key not null,
nome_func varchar(100) not null,
sexo_func varchar(10) not null,
bairro_func varchar(100) not null,
salario_func int not null,
setor_func varchar(100)
);

insert into funcionario(nome_func, sexo_func, bairro_func, salario_func, setor_func)
values ("Larissa Menezes","F","Jabaquara",1200.00,"Marketing"),
	   ("Selma Nunes","F","Grajaú",3800.00,"Vendas"),
       ("Leandro Henrique","M","Socorro",2950.00,"RH"),
       ("Amélia Jeremias","F","Socorro",4200.00,"Marketing"),
       ("Cláudio Jorge Silva","M","Jabaquara",1480.00,"Vendas"),
       ("Luciano Souza","M","Pedreira",1000.00,"Vendas"),
       ("Gabriela Santos Nunes","F","Jurubatuba",4150.00,"Marketing"),
       ("Rafaela Vieira Jr","F","Jabaquara",700.00,"Marketing"),
       ("Suzana Crispim","F","Grajaú",5600.00,"Produção"),
       ("Sabrina Oliveira Castro","F","Pedreira",2900.00,"Marketing"),
       ("Jarbas Silva Nunes","M","Jurubatuba",5300.00,"Produção"),
       ("Ralf Borges","M","Jabaquara",1600.00,"Marketing");
       
select * from funcionario;

select sum(salario_func) as Total_salarios
from funcionario;

select count(setor_func) as Qntd_func
from funcionario
where setor_func = "Marketing";

select setor_func, avg(salario_func) as Media_salarios
from funcionario
group by setor_func
order by Media_salarios desc;