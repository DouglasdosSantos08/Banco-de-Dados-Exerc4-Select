-- Exercicios do Select

CREATE DATABASE empresa
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE empresa;

-- Tabela 1: Clientes
CREATE TABLE Gerentes (
    id INT NOT NULL AUTO_INCREMENT,
    nome_completo VARCHAR(50),
    telefone VARCHAR(20),
    Salario decimal (5,3),
    data_chegada year,
    PRIMARY KEY (id)
) DEFAULT CHARSET=utf8mb4;

-- 1. Selecionando Todos os Dados de uma Tabela

desc Gerentes;
select * from Gerentes;


INSERT INTO gerentes VALUES
 (DEFAULT, ' joao silva', '99887766', '4.000', 2014),
(DEFAULT, ' Maria Paula', '99887766', '5.000', 2016),
(DEFAULT, ' Pedro Henrique', '99887766', '3.500', 2010);

drop table Gerentes;

-- 2. Selecionando Dados por Nome Específico
select * from Gerentes
where data_chegada in (2016,2020);

-- 3. Ordenando Resultados por Nome em Ordem Decrescente
select * from Gerentes
ORDER BY nome_completo desc;

-- 4. Selecionando Colunas Específicas de uma Tabela
select nome_completo,Salario FROM Gerentes;

-- 5. Filtrando Dados por Ano Igual ou Anterior a 2016

SELECT data_chegada FROM Gerentes
WHERE data_chegada <= 2016;


-- 6. Usando Operadores Relacionais para Comparar Valores

SELECT * FROM Gerentes
WHERE salario > 4.000;

SELECT * FROM Gerentes
WHERE data_chegada < 2015;

SELECT * FROM Gerentes
WHERE salario <> 5.000;

SELECT * FROM Gerentes
WHERE data_chegada >= 2010;

--  7. Filtrando Dados por Intervalo de Valores (BETWEEN)

SELECT * FROM Gerentes
WHERE salario BETWEEN 3.500 AND 5.000;

-- 8. Combinando Condições com AND e OR
SELECT * FROM Gerentes
WHERE data_chegada > 2010
  AND salario > 4.000;

-- 9. Selecionando Registros que Contém um Valor Específico (IN)
SELECT * FROM Gerentes
WHERE data_chegada IN (2010, 2014, 2016);


-- 10. Utilizando o Operador de União (|) para Combinar Resultados

SELECT nome_completo, salario FROM Gerentes
WHERE salario > 4.000
UNION
SELECT nome_completo, salario FROM Gerentes
WHERE data_chegada < 2015;

-- 11. Buscando Nomes que Começam com 'Maria' (LIKE e Wildcard)
SELECT * FROM Gerentes
WHERE nome_completo LIKE 'Maria%';

-- 12. Atualizando o Telefone de um Gerente Específico

UPDATE Gerentes SET telefone = '99998888'
WHERE nome_completo = 'Maria Paula';

-- 13. Removendo Registros duplicados (DISTINCT)

SELECT DISTINCT data_chegada FROM Gerentes;

-- 14. Contando o Número de Gerentes por Ano de Chegada (COUNT)

SELECT data_chegada, COUNT(*) AS total FROM Gerentes
GROUP BY data_chegada;

-- 15. Calculando a Média, Máximo e Mínimo de Salários (AVG, MAX, MIN)

SELECT AVG(salario) AS salario_medio,
MAX(salario) AS maior_salario, MIN(salario) AS menor_salario FROM Gerentes;
