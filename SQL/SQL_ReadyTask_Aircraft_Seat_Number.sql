/*Есть две таблицы: aircrafts и seats

Суть задания: вывести количество мест в каждом конкретном самолете из моделей компании “Боинг”.
Синтаксис написания запроса - PostgreSQL. */


SELECT
    a.model,
    COUNT(s.seat_no) AS seat_count
FROM
    aircrafts a
JOIN
    seats s ON a.aircraft_code = s.aircraft_code
WHERE
    a.model LIKE '%Боинг%'
GROUP BY
    a.model;




