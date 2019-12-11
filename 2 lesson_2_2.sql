SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS sample;

-- загружаем дамп из файла example.sql из командной стройки --
-- mysql sample < example.sql --

USE sample;
DESC users;
