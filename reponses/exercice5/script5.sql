SELECT 
    Numero_ticket AS 'Numéro ticket', DATE_VENTE
FROM
    ticket
WHERE
    MONTH(DATE_VENTE) = 03
        AND YEAR(DATE_VENTE) = 2014