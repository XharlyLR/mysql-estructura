USE n1exercici2;

INSERT INTO provincia
	VALUES (DEFAULT, 'Barcelona'),
		   (DEFAULT, 'Tarragona');

INSERT INTO localitat
	VALUES (DEFAULT, 'Barcelona', 1),
		   (DEFAULT, 'Badalona', 1),
		   (DEFAULT, 'Tarragona', 2);
           
INSERT INTO clients
	VALUES (DEFAULT, 'Pau', 'Serra', 'Av. 2', 08754, 656764248, 1),
		   (DEFAULT, 'Nuria', 'Montoya', 'Av. 77', 07568, 626567248, 3);
           
INSERT INTO botiga
	VALUES (DEFAULT, 'Nyam Nyam', 'Av. 50', 08154, 943274827, 1),
		   (DEFAULT, 'Super Nyam', 'Av. 41', 08068, 926567248, 1),
           (DEFAULT, 'Pizza & Nyam', 'Av. 101', 08518, 926567248, 2),
           (DEFAULT, 'Nya-Nyam', 'Av. 254', 07068, 926567248, 3);
           
INSERT INTO empleat
	VALUES (DEFAULT, 'Marta', 'Garcia', '37785754R', 688764998, 'repartidor', 1),
		   (DEFAULT, 'Dani', 'Garcia', '37785757G', 656889998, 'cuiner', 1),
		   (DEFAULT, 'Marc', 'Mont', '97893476T', 699567888, 'cuiner', 2),
           (DEFAULT, 'Oscar', 'Lopez', '88893476C', 600027883, 'repartidor', 3);
           
INSERT INTO comanda
	VALUES (DEFAULT, 1, DEFAULT, FALSE, 4, 16.5, NULL, 1, NULL),
		   (DEFAULT, 1, DEFAULT, TRUE, 2, 10, NULL, 2, 1),
           (DEFAULT, 2, DEFAULT, TRUE, 4, 20, NULL, 3, 4);
           
INSERT INTO categoria
	VALUES (DEFAULT, 'Beguda'),
		   (DEFAULT, 'Hamburguesa'),
           (DEFAULT, 'Pizza1'),
           (DEFAULT, 'Pizza2');
           
INSERT INTO producte
	VALUES (DEFAULT, 'Aigüa', NULL, NULL, 2, 1),
		   (DEFAULT, 'Cola', NULL, NULL, 2.5, 1),
           (DEFAULT, 'Hamburguesa completa', NULL, NULL, 5, 2),
           (DEFAULT, 'Hamburguesa de pollastre', NULL, NULL, 4, 2),
           (DEFAULT, 'Pizza bbq', NULL, NULL, 8, 3),
           (DEFAULT, 'Pizza carbonara', NULL, NULL, 7.5, 4);
           
INSERT INTO comanda_has_producte
	VALUES (DEFAULT, 1, 1),
           (DEFAULT, 1, 1),
           (DEFAULT, 3, 1),
           (DEFAULT, 6, 1),
           (DEFAULT, 2, 2),
           (DEFAULT, 6, 2),
           (DEFAULT, 1, 3),
           (DEFAULT, 2, 3),
           (DEFAULT, 5, 3),
           (DEFAULT, 6, 3);
    