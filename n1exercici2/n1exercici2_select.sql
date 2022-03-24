USE n1exercici2;

SELECT SUM(1) as 'Quantitat de begudes venudes a BCN' FROM categoria c
JOIN producte p on c.idcategoria = p.idcategoria
JOIN comanda_has_producte chp ON p.idproducte = chp.idproducte
JOIN comanda co ON chp.idcomanda = co.idcomanda
JOIN botiga b on co.idbotiga = b.idbotiga
JOIN localitat l on b.idlocalitat = l.idlocalitat
WHERE c.nom = 'Beguda' AND l.nom = 'Barcelona';

SELECT SUM(1) AS 'Comandes efectuades per Marta' FROM comanda co
JOIN empleat e on co.idrepartidor = e.idempleat
WHERE e.nom = 'Marta';