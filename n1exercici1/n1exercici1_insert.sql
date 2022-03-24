USE n1exercici1;

INSERT INTO adreça
	VALUES (DEFAULT, 'Av. 1', 55, 'Tercer', 1, 'Barcelona', 08563), 
		   (DEFAULT, 'Av. 67', 9, 'Primer', 2, 'Badalona', 08268),
           (DEFAULT, 'Av. 3', 73, 'Primer', 1, 'Sabadell', 08065),
           (DEFAULT, 'Av. 45', 10, 'Baix', 3, 'Barcelona', 08345),
           (DEFAULT, 'Av. 20', 33, 'Segon', 2, 'Barcelona', 08123);
           
INSERT INTO proveidor
	VALUES (DEFAULT, 'OnlyGlasses S.A.', 945346534, 0567354, '464746546X', 1),
           (DEFAULT, 'Ulls de Falcó S.A.', 954635347, 2345453, '364546546X', 2),
           (DEFAULT, 'Bui&Co S.L.', 944456447, 32443656, '564546546X', 3);
           
INSERT INTO empleat
	VALUES (DEFAULT, 'Javi', 'Rodriguez'), 
		   (DEFAULT, 'Ana', 'Garcia');

INSERT INTO clients
	VALUES (DEFAULT, 'Joan', 'Salvador', 614578786, 'jansal@gmail.com', DEFAULT, NULL, 4), 
		   (DEFAULT, 'Sonia', 'Romero', 627567566, 'sonro@gmail.com', DEFAULT, 1, 4),
          (DEFAULT, 'Alba', 'Suarez', 634558671, 'gasi@gmail.com', DEFAULT, NULL, 5);
          
INSERT INTO venda
	VALUES (DEFAULT, 1, 1, DEFAULT, 75.5), 
		   (DEFAULT, 1, 2, DEFAULT, 101),
           (DEFAULT, 2, 1, DEFAULT, 60);
           
INSERT INTO ulleres
	VALUES (DEFAULT, 'Emporio Armani', NULL, NULL, 'pasta', 'blau', NULL, NULL, 70, 2, NULL),
		   (DEFAULT, 'Ray-Ban', 1.75, 1.5, 'pasta', 'negre', NULL, NULL, 50.5, 1, 2),
           (DEFAULT, 'Ray-Ban', 1.75, 1.5, 'metàl·lica', 'negre', NULL, NULL, 50.5, 1, 2),
           (DEFAULT, 'Tous', 1.25, 1, 'metàl·lica', 'daurat', NULL, NULL, 75.5, 1, 1),
           (DEFAULT, 'Boss', 2, 2, 'flotant', 'vermell', NULL, NULL, 60, 3, 3)