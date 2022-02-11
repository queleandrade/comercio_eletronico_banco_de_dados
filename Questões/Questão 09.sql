-- Mostre quanto foi faturado por mês (leve em conta o valor total de cada pedido - novamente pense em GROUP BY e SUM).

select monthname(pedido.data_pedido) as "Mes", count(numero) as "Total de vendas", sum(valor_final) as "Valor total" 
from pedido group by mes  order by month(data_pedido);