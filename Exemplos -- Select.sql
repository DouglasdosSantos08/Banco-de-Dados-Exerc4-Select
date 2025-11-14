-- SELECT FORMAS DE USAR

select * from antiquario
ORDER BY categoria desc; -- ordem crescente
-- order by categoria a 

-- where

select * from antiquario
where ano >= 1985;

select * from antiquario;

select categoria,quantidade FROM antiquario;

-- * TUDO 

select * from antiquario;

-- between -- entre
select * from antiquario
where ano between 1980 and 1990
order by ano desc;

-- IN -- coisa especifica
select * from antiquario
Where quantidade in (10,40);

-- like
select * from antiquario
where categoria like '%a';

-- like com wildcard
select * from antiquario
where categoria like 'iui_';

-- distinct (distinguir) - quando quero apenas listar usuaros  registrados
SELECT DISTINCT quantidade from antiquario;

-- // funções de agregação

-- count
select count(*) from antiquario;

-- max: valor maximo em uma determinada coluna
select max(ano) from antiquario;

-- sum: somar valores de um campo numerico
select sum(quantidade) from antiquario;

-- min: valor minimo de uma determinada coluna
select min(quantidade) from antiquario;

-- avg: média dos valores de um campo numerico
select avg(ano) from antiquario;

-- // group by (agrupamento)

select categoria, quantidade from antiquario
group by cantegoria, quantidade;

select categoria, sum (quantidade) from antiquario
group by categoria;






