## Практическое задание по теме “Сложные запросы”
1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.  
```
INSERT INTO `orders` (`user_id`) VALUES ('6');
INSERT INTO `orders` (`user_id`) VALUES ('1');
INSERT INTO `orders` (`user_id`) VALUES ('1');

SELECT * FROM users AS u WHERE EXISTS (SELECT 1 FROM orders AS o WHERE u.id =  o.user_id);  
```
2. Выведите список товаров products и разделов catalogs, который соответствует товару.  
```
SELECT p.id, p.`name`, c.`name` FROM products AS p LEFT JOIN catalogs AS c ON p.catalog_id = c.id;  
```
3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.  
```
CREATE TABLE flights (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `from` VARCHAR(255),
  `to` VARCHAR(255)
  );
  
INSERT INTO flights (`from`, `to`) VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'kazan'),
  ('irkutsk', 'moscow'),
  ('omsk', 'irkutsk'),
  ('moscow', 'kazan');
  
CREATE TABLE cities (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `label` VARCHAR(255),
  `name` VARCHAR(255)
  );
  
INSERT INTO cities (`label`, `name`) VALUES
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск');

SELECT * FROM flights;
SELECT * FROM cities;

SELECT f.id, (SELECT c.`name` FROM cities AS c WHERE c.`label` = f.`from`) AS `from`,
(SELECT c.`name` FROM cities AS c WHERE c.`label` = f.`to`) AS `to` FROM flights AS f;
```
