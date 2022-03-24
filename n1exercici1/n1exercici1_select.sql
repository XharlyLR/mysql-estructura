USE n1exercici1;

SELECT SUM(factura) AS total_factures FROM venda 
WHERE idclients = 1 AND (data_venda BETWEEN '2022-01-01' AND '2023-01-01');
    
SELECT * FROM ulleres u
JOIN venda v ON v.idvenda = u.idvenda
JOIN empleat e ON e.idempleat = v.idempleat
WHERE e.idempleat = 1 AND (v.data_venda BETWEEN '2022-01-01' AND '2023-01-01');

SELECT * FROM proveidor p
JOIN ulleres u ON p.idproveidor = u.idproveidor
WHERE u.idvenda IS NOT NULL