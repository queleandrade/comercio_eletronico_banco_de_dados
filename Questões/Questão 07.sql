-- Mostre os dados dos pedidos, incluindo nomes dos clientes e nomes dos produtos que foram vendidos.

select pedido.numero, pedido.data_pedido, pedido.valor_bruto, pedido.desconto, pedido.valor_final, cliente.nome, produto.nome from pedido
inner join item_pedido on pedido.numero = item_pedido.pedido_numero 
inner join produto on produto.codigo = item_pedido.produto_codigo 
inner join cliente on pedido.cliente_id = cliente.id;