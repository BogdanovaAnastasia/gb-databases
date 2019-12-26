## Практическое задание по теме “CRUD - операции”
Повторить все действия по доработке БД vk.  
Заполнить новые таблицы.  
Подобрать сервис который будет служить основой для вашей курсовой работы.  
(по желанию) Предложить свою реализацию лайков.    

1. Таблица `users`. Обмен значений `created_at` и `updated_at`, когда дата создания позже даты обновления.  
```
USE vk;

SELECT * FROM users;

CREATE TEMPORARY TABLE switch_created_updated(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
created_at DATETIME,
updated_at DATETIME);

INSERT INTO switch_created_updated 
(id, created_at, updated_at) 
SELECT id, created_at, updated_at FROM users;

SELECT * FROM switch_created_updated;

UPDATE users as u, switch_created_updated as sw SET 
u.created_at = sw.updated_at, 
u.updated_at = sw.created_at 
WHERE u.created_at > u.updated_at AND u.id = sw.id;

SELECT * FROM vk.users;
```
2. Таблица `messages`. Исправление общения пользователей с самими собой.  
```
SELECT * FROM messages;

SET SQL_SAFE_UPDATES = 0;

UPDATE messages SET 
from_user_id = FLOOR(1 + RAND()*100),
to_user_id = FLOOR(1 + RAND()*100);

SELECT * FROM messages WHERE from_user_id = to_user_id;

SELECT * FROM messages;
```
3. Таблица `media_types`. Изменение содержания.  
```
SELECT * FROM media_types;

TRUNCATE media_types;

INSERT INTO media_types (`name`) VALUES ('photo'), ('video'), ('audio');

SELECT * FROM media_types;
```
4. Таблица `media`. Обмен значений `created_at` и `updated_at`, когда дата создания позже даты обновления. Замена пустых файлов на очень маленькие (с 0 на 1). Замена на случайных пользователей. Замена идентификаторов медиа по их количеству. Исправление типа столбца metadata на json.  
```
SELECT * FROM media;

TRUNCATE switch_created_updated;

SELECT * FROM switch_created_updated;

INSERT INTO switch_created_updated (id, created_at, updated_at) SELECT id, created_at, updated_at FROM media;

UPDATE media as m, switch_created_updated as sw SET 
m.created_at = sw.updated_at, 
m.updated_at = sw.created_at 
WHERE m.created_at > m.updated_at AND m.id = sw.id;

UPDATE media SET size = 1 WHERE size = 0;

UPDATE media SET 
user_id = FLOOR(1 + RAND()*100);

UPDATE media, media_types SET 
media_type_id = FLOOR(1 + RAND()*3);
-- или
-- UPDATE media, media_types SET 
-- media_type_id = FLOOR(1 + RAND()*(SELECT COUNT(1) FROM media_types));

DESC media;

UPDATE media SET metadata = CONCAT('{"', filename, '":"', size, '"}');

ALTER TABLE media MODIFY COLUMN metadata JSON;

DESC media;

SELECT * FROM media;
```
4. Таблица `friendship`. Исправление дружбы пользователей с самими собой. Замена на случайный статус дружбы. Подтверждение дружбы после запроса о ней.  
```
SELECT * FROM friendship;

UPDATE friendship SET 
user_id = FLOOR(1 + RAND()*100),
friend_id = FLOOR(1 + RAND()*100);

UPDATE friendship, friendship_statuses SET 
status_id = FLOOR(1 + RAND()*10);
-- или
-- UPDATE friendship, friendship_statuses SET 
-- status_id = FLOOR(1 + RAND()*(SELECT COUNT(1) FROM friendship_statuses));

UPDATE friendship SET 
confirmed_at = DATE_ADD(requested_at, INTERVAL FLOOR(1 + RAND()*100000) MINUTE);

SELECT * FROM friendship;
```
5. Таблица `communities_users`. Замена на случайное расположение пользователей в разных группах.  
```
SELECT * FROM communities_users;

UPDATE communities_users SET 
community_id = FLOOR(1 + RAND()*50),
user_id = FLOOR(1 + RAND()*100);

SELECT * FROM communities_users;
```
6. Таблица `profiles`. Добавление возможности не иметь фото профиля.  
```
DESC `profiles`;

ALTER TABLE profiles MODIFY COLUMN photo_id INT;

DESC `profiles`;
```
7. Добавление настроек приватности для пользователя. Добавление таблиц `user_privacy`, `section`, `privacy`, `privacy_except_user`. Заполнение таблиц данными, в том числе из filldb, правка данных.  
```
CREATE TABLE section (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  name VARCHAR(255) NOT NULL
);

INSERT INTO `section` (`id`, `name`) VALUES (1, 'Кто видит основную информацию моей страницы');
INSERT INTO `section` (`id`, `name`) VALUES (2, 'Кто видит фотографии, на которых меня отметили');
INSERT INTO `section` (`id`, `name`) VALUES (3, 'Кто видит список моих сохранённых фотографий');
INSERT INTO `section` (`id`, `name`) VALUES (4, 'Кто видит список моих групп');

CREATE TABLE privacy (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  name VARCHAR(255) NOT NULL
);

INSERT INTO `privacy` (`id`, `name`) VALUES (1, 'Все пользователи');
INSERT INTO `privacy` (`id`, `name`) VALUES (2, 'Только друзья');
INSERT INTO `privacy` (`id`, `name`) VALUES (3, 'Друзья и друзья друзей');
INSERT INTO `privacy` (`id`, `name`) VALUES (4, 'Только я');
INSERT INTO `privacy` (`id`, `name`) VALUES (5, 'Все кроме...');
INSERT INTO `privacy` (`id`, `name`) VALUES (6, 'Некоторые друзья');

CREATE TABLE privacy_except_user (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  user_id INT UNSIGNED NOT NULL,
  friend_id INT UNSIGNED NOT NULL,
  privacy_id INT UNSIGNED NOT NULL
);
```
-- заполнение таблицы `privacy_except_user` из filldb (не привожу) - 10 строк  
```
SELECT * FROM privacy_except_user;
```
-- чтобы не было несколько разных политик для друзей  
```
ALTER TABLE privacy_except_user ADD UNIQUE INDEX (`user_id`, `friend_id`);
```
-- исправление таблицы `privacy_except_user`: случайные идентификаторы, `privacy_id` 5 или 6  
```

SET SQL_SAFE_UPDATES = 0;

UPDATE privacy_except_user SET 
user_id = FLOOR(1 + RAND()*100),
friend_id = FLOOR(1 + RAND()*100);

UPDATE privacy_except_user as u SET
u.privacy_id = (SELECT p.id FROM privacy as p 
WHERE p.id IN (5, 6) 
ORDER BY RAND() LIMIT 1);

SELECT * FROM privacy_except_user;

CREATE TABLE user_privacy (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  user_id INT UNSIGNED NOT NULL,
  section_id INT UNSIGNED NOT NULL,
  privacy_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);
```
-- заполнение таблицы `user_privacy` из filldb (не привожу) - 100 строк
```
SELECT * FROM user_privacy;
```
-- чтобы не было разных политик для одной секции
```
ALTER TABLE user_privacy ADD UNIQUE INDEX (`user_id`, `section_id`);
```
-- исправление таблицы `user_privacy`: обмен значений `created_at` и `updated_at`, когда дата создания позже даты обновления, случайные значения идентификаторов
```
CREATE TEMPORARY TABLE switch_created_updated(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
created_at DATETIME,
updated_at DATETIME);

SELECT * FROM switch_created_updated;

INSERT INTO switch_created_updated (id, created_at, updated_at) SELECT id, created_at, updated_at FROM user_privacy;

UPDATE user_privacy as up, switch_created_updated as sw SET 
up.created_at = sw.updated_at, 
up.updated_at = sw.created_at 
WHERE up.created_at > up.updated_at AND up.id = sw.id;

-- долго подбирала значения из-за малого количества секций
UPDATE user_privacy SET 
user_id = FLOOR(1 + RAND()*100),
section_id = FLOOR(1 + RAND()*4),
privacy_id = FLOOR(1 + RAND()*6);

SELECT * FROM user_privacy;
```
8. Добавление полей в таблицу `communities`.  
```
DESC communities;

ALTER TABLE communities ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP AFTER name;
ALTER TABLE communities ADD COLUMN is_closed BOOLEAN AFTER created_at;
ALTER TABLE communities ADD COLUMN closed_at TIMESTAMP AFTER is_closed;

DESC communities;

UPDATE communities SET is_closed = TRUE WHERE id IN (3, 14, 27, 50);
UPDATE communities SET closed_at = NOW() WHERE is_closed IS TRUE;

SELECT * FROM communities;
```
9. Добавление полей в таблицу `communities_users`.  
```
DESC communities_users;

ALTER TABLE communities_users ADD column is_banned BOOLEAN AFTER user_id;
ALTER TABLE communities_users ADD column is_admin BOOLEAN AFTER user_id;

DESC communities_users;

UPDATE communities_users SET is_banned = TRUE WHERE user_id IN (7, 75, 24);
UPDATE communities_users SET is_admin = TRUE WHERE user_id IN (1, 56, 74, 12, 100);

SELECT * FROM communities_users;
```
10. Добавление поля в таблицу `messages`.  
```
DESC messages;

ALTER TABLE messages ADD column attached_media_id INT UNSIGNED AFTER body;

UPDATE messages SET attached_media_id = (
  SELECT id FROM media WHERE user_id = from_user_id LIMIT 1
);

SELECT * FROM messages;
```
