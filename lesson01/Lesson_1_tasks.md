## Практическое задание по теме “Управление БД”
1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.  

anastasia@anastasia-VirtualBox:~$`sudo mysql -u root -p`  
```
[sudo] пароль для anastasia:
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.18 MySQL Community Server - GPL

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
```
anastasia@anastasia-VirtualBox:~$ `pwd`  
```
/home/anastasia
```
anastasia@anastasia-VirtualBox:~$ cat > `.my.cnf`  
```
[client]
user=root
password=_____
```
anastasia@anastasia-VirtualBox:~$ `sudo mysql`  
```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 8.0.18 MySQL Community Server - GPL

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
```
2. Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.

mysql> `SHOW DATABASES;`  
```
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0,00 sec)
```
mysql> `CREATE SCHEMA example;`  
```
Query OK, 1 row affected (0,01 sec)
```
mysql> `SHOW DATABASES;`
```
+--------------------+
| Database           |
+--------------------+
| example            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0,00 sec)
```
mysql> `USE example;`  
```
Database changed
```
mysql> `CREATE TABLE users (`  
    ->   `id INT UNSIGNED NOT NULL,`  
    ->   `name VARCHAR(150) NOT NULL);`  
```
Query OK, 0 rows affected (0,01 sec)
```
mysql> `DESCRIBE users;`  
```
+-------+------------------+------+-----+---------+-------+
| Field | Type             | Null | Key | Default | Extra |
+-------+------------------+------+-----+---------+-------+
| id    | int(10) unsigned | NO   |     | NULL    |       |
| name  | varchar(150)     | NO   |     | NULL    |       |
+-------+------------------+------+-----+---------+-------+
2 rows in set (0,00 sec)
```
mysql> `\q`  
```
Bye
```
3. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.

anastasia@anastasia-VirtualBox:~$ `sudo mysqldump example > example.sql`  
```
[sudo] пароль для anastasia:
```
anastasia@anastasia-VirtualBox:~$ `ls`  
```
 examples.desktop   example.sql   mysql-apt-config_0.8.10-1_all.deb   ...
 ```
anastasia@anastasia-VirtualBox:~$ `sudo mysql`  
```
...
```
mysql> `CREATE SCHEMA sample;`  
```
Query OK, 1 row affected (0,02 sec)
```
mysql> `SHOW DATABASES;`  
```
+--------------------+
| Database           |
+--------------------+
| example            |
| information_schema |
| mysql              |
| performance_schema |
| sample             |
| sys                |
+--------------------+
6 rows in set (0,00 sec)
```
mysql> `\q`  
```
Bye
```
anastasia@anastasia-VirtualBox:~$ `sudo mysql sample < example.sql`

anastasia@anastasia-VirtualBox:~$ `sudo mysql`  
```
...
```
mysql> `SHOW TABLES FROM example;`  
```
+-------------------+
| Tables_in_example |
+-------------------+
| users             |
+-------------------+
1 row in set (0,00 sec)
```
mysql> `SHOW TABLES FROM sample;`  
```
+------------------+
| Tables_in_sample |
+------------------+
| users            |
+------------------+
1 row in set (0,00 sec)
```
mysql> `\q`  
```
Bye
```
4. (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.  

anastasia@anastasia-VirtualBox:~$ `sudo mysqldump --opt --where="1 limit 100" mysql help_keyword > help_keyword.sql`

anastasia@anastasia-VirtualBox:~$ `ls`  
```
 examples.desktop   example.sql   help_keyword.sql   mysql-apt-config_0.8.10-1_all.deb  ...
```
