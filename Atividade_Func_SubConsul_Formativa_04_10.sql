CREATE DATABASE vendas_bd_1e;
use vendas_bd_1e;

CREATE TABLE vendas(
id_venda int auto_increment primary key not null,
produto varchar(100) not null,
quantidade int not null,
preco decimal(10,2) not null
);

insert into vendas(produto, quantidade, preco)
values ("McLaren Senna",5,1200000.00),
	   ("Lamborghini Aventador",5,830000.00),
       ("Bugatti Chiron",5,5000000.00),
       ("Ferrari F8 Spider",5,450000.00),
       ("Dodge Challenger Demon",5,140000.00),
       ("Jesko Absolut",5,3400000.00),
       ("Lancer Evolution Final Edition",5,80000.00),
       ("Rolls Royce Cullinan",5,810000.00),
       ("Subaru Impreza 1998",5,30000.00),
       ("Audi RS 5 Sportback",5,863990.00);
       
select * from vendas;

select count(*) AS total_vendas
from vendas;

select sum(quantidade) as total_produtos
from vendas;

select avg(preco) as Medias_de_Preço
from vendas;

select min(preco) as Menor_Preço
from vendas;

select max(preco) as Maior_Preço
from vendas;

select produto, count(*) as Total_vendas
from vendas
group by produto;

select produto, sum(quantidade) as Total_produtos_vendas
from vendas
group by produto
having Total_produtos_vendas >10;

select produto, quantidade, preco
from vendas
order by preco asc
limit 5;

select produto, preco,
	(select max(preco) from vendas) As Maior_preço
from vendas;

select * from vendas;