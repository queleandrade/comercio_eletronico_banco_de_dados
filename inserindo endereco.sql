INSERT INTO endereco VALUES
	(null, 'Casa', 'avenida', 123, 'Próximo shopping', 'Brotas', 'Brasil de Pelotas', 'MG', '12334-000', 1),
    (null, 'Ap', 'condominio', 234, 'Próximo praia', 'Engomadeira', 'Ruy Barbosa', 'BA', '23456-000', 2),
    (null, 'casa', 'chacara', 456, 'Próximo mercado', 'Zona rural', 'São Felipe', 'SP', '44550-000', 3),
    (null, 'Ap', 'condominio', 789, 'Próximo cinema ', 'Primavera', 'Cruz das Almas', 'BA', '34575-000', 4),
    (null, 'casa', 'rua', 394, 'Centro', 'Santo Antonio ', 'Inocoop', 'BA', '56437-000', 5);
    
INSERT INTO endereco VALUES
    (null, 'casa', 'Rua das Oliveiras', 287, 'Perto de uma igreja', 'Aldeota', 'Fortaleza', 'CE', '60170-001', 'cliente_id')
	(null, 'Ap', 'Rua', 36, 'Próximo shopping', 'Laranjeiras', 'Rio de Janeiro', 'RJ', '86565-000', 7),
    (null, 'Casa', 'Rua da Imprensa', 788, 'Próximo praia', 'Monte Castelo', 'Campo Grande', 'MS', '79002-290', 8),
    (null, 'Ap', 'Rua Arlindo Nogueira', 674, 'Próximo a farmácia', 'Centro', 'Teresina', 'PI', '27150-000', 9),
    (null, 'casa', 'condominio', 789, 'Próximo a praça', 'Vila da Saúde', 'São Paulo', 'SP', '04144-070', 10);

--  deletando a linha 40 na tabela
DELETE FROM endereco WHERE num_seq = 40;

SELECT * FROM endereco;

-- renomeando enderco para endereco
rename table enderco to endereco;
