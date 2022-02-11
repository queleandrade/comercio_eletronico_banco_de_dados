-- Mostre quantos pedidos foram feitos por mês no ano de 2022 (caso você tenha registros neste ano, senão escolha um ano que você tenha cadastrado - Novamente pense em COUNT e GROUP BY).

select monthname(pedido.data_pedido) as "Mes", count(numero) as "Total"
from pedido WHERE YEAR(data_pedido) = 2022 group by mes  order by month(data_pedido);
