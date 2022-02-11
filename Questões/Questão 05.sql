-- Mostre todos os produtos com seus respectivos departamentos.

select * from produto inner join departamento on produto.departamento_codigo = departamento.codigo;
