## Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение”
1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.  
```
SET SQL_SAFE_UPDATES = 0;  
UPDATE users SET created_at = NULL, updated_at = NULL;  
SELECT * FROM users;  
UPDATE users SET created_at = CURRENT_TIMESTAMP, updated_at = CURRENT_TIMESTAMP;  
-- or  
-- UPDATE users SET created_at = DEFAULT, updated_at = DEFAULT;  
SELECT * FROM users;  
```
2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.  
```
ALTER TABLE users MODIFY created_at DATETIME;  
ALTER TABLE users MODIFY updated_at DATETIME;  
```
3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.  
```
INSERT INTO storehouses
  (name, created_at, updated_at)
VALUES
  ('Storehouse_1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
  
INSERT INTO storehouses_products
  (storehouse_id, product_id, value, created_at, updated_at)
VALUES
  (1, 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (1, 2, 2500, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (1, 3, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (1, 4, 30, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (1, 5, 500, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (1, 6, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (1, 7, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

SELECT * FROM storehouses_products
ORDER BY
CASE WHEN `value`='0' THEN 1 ELSE 0 END,
value;
```
4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august')  
```
SELECT name, DATE_FORMAT(birthday_at,'%d %M %Y') as birthday_at, created_at, updated_at
FROM users
WHERE MONTHNAME(birthday_at) = 'may' OR MONTHNAME(birthday_at) = 'august'  
```
5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.  
```
SELECT * FROM catalogs
WHERE id IN (5, 1, 2)
ORDER BY
CASE WHEN id = 5 THEN 0
	 WHEN id = 1 THEN 1
	 WHEN id = 2 THEN 2
END;  
```

## Практическое задание теме “Агрегация данных”  
1. Подсчитайте средний возраст пользователей в таблице users  
```
SELECT AVG(DATE_FORMAT(FROM_DAYS(TO_DAYS(now()) - TO_DAYS(birthday_at)), '%Y') + 0) as average_age FROM users;  
```
2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.  
```
SELECT DAYNAME(CONCAT(YEAR(CURRENT_DATE()), '-', DATE_FORMAT(birthday_at, '%m-%d'))) as weekday,
count(WEEKDAY(CONCAT(YEAR(CURRENT_DATE()), '-', DATE_FORMAT(birthday_at, '%m-%d')))) as number_of_birthdays
FROM users GROUP BY weekday
order by WEEKDAY(CONCAT(YEAR(CURRENT_DATE()), '-', DATE_FORMAT(birthday_at, '%m-%d')));  
```
3. (по желанию) Подсчитайте произведение чисел в столбце таблицы  
```
SELECT EXP(SUM(LOG(`value`)))
*
(SELECT
CASE WHEN `value`=0 THEN 0 ELSE 1 END)
*
(SELECT
CASE WHEN (`value` < 0) THEN -1 ELSE 1 END) 
 as values_multiply FROM storehouses_products;  
```

