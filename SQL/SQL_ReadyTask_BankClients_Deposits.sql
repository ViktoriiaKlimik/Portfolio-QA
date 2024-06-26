SELECT 
    c.ClientName AS "ФИО клиента",
    SUM(CASE WHEN d.Currency = 'RUB' THEN 1 ELSE 0 END) AS "Рубли",
    SUM(CASE WHEN d.Currency = 'USD' THEN 1 ELSE 0 END) AS "Доллары",
    SUM(CASE WHEN d.Currency = 'EUR' THEN 1 ELSE 0 END) AS "Евро"
FROM 
    Deposits d
JOIN 
    Status s ON d.StatusID = s.StatusID
JOIN 
    Clients c ON d.ClientID = c.ClientID
WHERE 
    s.StatusName = 'Работает'
    AND d.Saldo > 0
GROUP BY 
    c.ClientName;




