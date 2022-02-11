-- Mostre o valor total do estoque por departamento.

select departamento.nome, sum(produto.estoque*produto.preco) from departamento 
inner join produto on produto.departamento_codigo = departamento.codigo 
group by departamento_codigo order by departamento.nome asc;