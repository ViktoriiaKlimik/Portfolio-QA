-- 1) Вывести среднюю заработную плату всех тестировщиков на проекте "ПУМЧД".
-- Ответ должен содержать столбцы:
-- Название проекта;
-- Название должности;
-- Средняя заработная плата.

SELECT 
    p.project_name AS "Название проекта",
    t.titel_name AS "Название должности",
    ROUND(AVG(pos.salary),2) AS "Средняя заработная плата"
FROM 
    projects p
JOIN 
    positions pos ON p.project_id = pos.project_id
JOIN 
    titles t ON pos.title_id = t.Id
WHERE 
    p.project_name = 'ПУМЧД'
    AND t.titel_name LIKE '%естировщик%'
GROUP BY 
    p.project_name,
    t.titel_name;

-- 2) Вывести всех работников, которые работают сразу на нескольких проектах. Ответ должен содержать следующие столбцы:
-- Имя и фамилия сотрудника;
-- Название должности.

SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS "Имя и Фамилия",
    t.titel_name AS "Название должности"
FROM 
    employee e
JOIN 
    positions pos ON e.employee_id = pos.employee_id
JOIN 
    titles t ON pos.title_id = t.Id
GROUP BY 
    "Имя и Фамилия", "Название должности"
HAVING 
    COUNT(DISTINCT pos.project_id) > 1;
