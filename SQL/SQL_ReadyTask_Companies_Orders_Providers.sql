-- 1. Вывести названия всех компаний, которые не выполнили заказ с 15.11.1996 по 18.02.1997
SELECT c.CompanyName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
  AND o.OrderDate BETWEEN '1996-11-15' AND '1997-02-18'
WHERE o.OrderID IS NULL;

-- 2. Вывести названия компаний поставщиков, которые находятся в México D.F.
SELECT CompanyName
FROM Customers
WHERE City = 'México D.F.';

-- 3. Вывести только те заказы, которые были оформлены с 12.12.1996 по 18.02.1997
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-12-12' AND '1997-02-18';

-- 4. Вывести только тех заказчиков, название компании которых начинается с ‘An’
SELECT *
FROM Customers
WHERE CompanyName LIKE 'An%';

-- 5. Вывести названия компаний и заказы, которые они оформили, с суммой заказа более 17000. Использовать соединение таблиц.
SELECT c.CompanyName, o.OrderID, o.OrderSum
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderSum > 17000;

-- 6. Вывести следующие колонки: имя поставщика, сумма заказа. Результаты отсортировать по поставщикам в порядке убывания
SELECT c.CompanyName, o.OrderSum
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
ORDER BY c.CompanyName DESC;

-- 7. Вывести следующие колонки: имя поставщика, дата заказа. Вывести таким образом, чтобы все заказчики из таблицы 1 были показаны в таблице результатов.
SELECT c.CompanyName, o.OrderDate
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;



