INSERT INTO produto VALUES
	(null, 'Galaxy S22', 'Smartphone Samsung Galaxy S22', 1380.20, 6, "", 2),
    (null, 'Moto G60', 'Smartphone g60 128gb - azul', 1709.10, 87, "", 2),
    (null, 'iPhone 11', 'Apple iPhone 11 (64 GB) - verde', 3914.10, 12, "", 2),
    (null, 'XCelular Xiamo Redmi 10', 'Celular Xiaomi Redmi 10 128gb ou 64gb Versão Global Original Xiaomi', 1419,34, "", 2),
    (null, 'iPhone 12', 'Iphone 12 Pro Max | Celular', 3350,10, "", 2),
    (null, 'Placa de Vídeo', 'Placa de Vídeo Sapphire Pulse Rx 6500 Xt Gaming OC, 4GB,', 1799, 7, "", 1),
    (null, 'Vídeo Game Portátil', 'Vídeo Game Portátil Luatek 10.000 Jogos', 155.99, 100, "", 1),
    (null, 'Mesa De Air Game ', 'Mesa De Air Game - Aero Hockey - H03', 1590, 1, "", 1),
    (null, 'FIFA 22 - PS4', 'FIFA 22 - PS4', 224.91, 0, "", 1),
    (null, 'Videogame Playstation 3', 'Videogame Playstation 3 Super Slim', 1357.99, 45, "", 1);

INSERT INTO produto VALUES
	(null, 'folklore', 'Taylor Swift (Artista)', 59.90, 13, "/imagens", 3),
    (null, 'WOMEN IN MUSIC PT. III', 'HAIM (Artista)', 49.90, 10, "/imagens", 3),
    (null, 'Chromatica', 'Lady Gaga (Artista) ', 39, 19, "/imagens", 3),
    (null, 'Blue Weekend', 'Wolf Alice (Artista)', 39.90, 16, "/imagens", 3),
    (null, 'After Laughter', 'Paramore (Artista) ', 30.90, 14, "/imagens", 3),
    (null, 'Recursão', 'Blake Crouch', 69.90, 27, "/imagens", 4),
    (null, 'Malibu renasce', 'Taylor Jenkins Reid', 29.90, 50, "/imagens", 4),
    (null, 'Os sete maridos de Evelyn Hugo', 'Taylor Jenkins Reid', 28.90, 41, "/imagens", 4),
    (null, 'Atlas de nuvens', 'David Mitchell', 39.90, 30, "/imagens", 4),
    (null, 'E não sobrou nenhum', 'Agatha Christie', 49.90, 45, "/imagens", 4);
    
-- uma coluna da tabela produto
alter table produto drop column produtocol;

select * from produto;