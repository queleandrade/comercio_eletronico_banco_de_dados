INSERT INTO endereco VALUES
	(null, 'Casa', 'avenida', 123, 'Próximo shopping', 'Brotas', 'Brasil de Pelotas', 'MG', '12334-000', 1),
    (null, 'Ap', 'condominio', 234, 'Próximo praia', 'Engomadeira', 'Ruy Barbosa', 'BA', '23456-000', 2),
    (null, 'casa', 'chacara', 456, 'Próximo mercado', 'Zona rural', 'São Felipe', 'SP', '44550-000', 3),
    (null, 'Ap', 'condominio', 789, 'Próximo cinema ', 'Primavera', 'Cruz das Almas', 'BA', '34575-000', 4),
    (null, 'casa', 'rua', 394, 'Centro', 'Santo Antonio ', 'Inocoop', 'BA', '56437-000', 5);
    
--  deletando a linha 40 na tabela
DELETE FROM endereco WHERE num_seq = 40;

SELECT * FROM endereco;

-- renomeando enderco para endereco
rename table enderco to endereco;
