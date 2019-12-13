CREATE DATABASE vk;

SHOW DATABASES;

USE vk;

CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(12) NOT NULL UNIQUE,
    created_at DATETIME DEFAULT NOW(),
    update_at DATETIME DEFAULT NOW()
    
);

DESC users;

CREATE TABLE profiles(
	user_id INT UNSIGNED NOT NULL PRIMARY KEY,
	sex CHAR(1) NOT NULL,
	birthday_at DATE,
    hometown VARCHAR(100),
    photo_id INT UNSIGNED NOT NULL
);

DESC profiles;

CREATE TABLE messages(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	from_user_id INT UNSIGNED NOT NULL,
    to_user_id INT UNSIGNED NOT NULL,
    body TEXT NOT NULL,
    is_important BOOLEAN,
    is_delivered BOOLEAN,
    created_at DATETIME DEFAULT NOW()
);

DESC messages;

CREATE TABLE friendship (
	user_id INT UNSIGNED NOT NULL,
    friend_id INT UNSIGNED NOT NULL,
    status_id INT UNSIGNED NOT NULL,
    requested_at DATETIME DEFAULT NOW(),
    confirmed_at DATETIME,
    PRIMARY KEY (user_id, friend_id)
);

DESC messages;

CREATE TABLE friendship_statuses(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(150) NOT NULL UNIQUE
);

DESC friendship_statuses;

CREATE TABLE communities (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL UNIQUE
);

DESC communities;

CREATE TABLE communities_users (
	community_id INT UNSIGNED NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (community_id, user_id)
);

DESC communities_users;

CREATE TABLE media (
	id	INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    media_type_id INT UNSIGNED NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    filename VARCHAR(255) NOT NULL,
    size INT NOT NULL,
    metadata JSON,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DESC media;

CREATE TABLE media_types (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

DESC media_types;

SHOW TABLES;
