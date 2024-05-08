DROP DATABASE IF EXISTS GrimaceGastronomy;
CREATE DATABASE GrimaceGastronomy;

USE GrimaceGastronomy;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id_user INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	username VARCHAR(50) NOT NULL,
	passwd VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	phone VARCHAR(12)
);

-- administrator extends user
-- for login, check if user is administrator
DROP TABLE IF EXISTS administrator;
CREATE TABLE administrator (
	id_admin INT PRIMARY KEY AUTO_INCREMENT,
	id_user INT,
	FOREIGN KEY (id_user) REFERENCES users(id_user)
);

DROP TABLE IF EXISTS recipe;
CREATE TABLE recipe (
	recipe_id INT PRIMARY KEY AUTO_INCREMENT,
	recipe_name VARCHAR(100) NOT NULL,
	calories INT, 
	descriptions TEXT,
	ingredients TEXT,
	instructions TEXT
);

-- backlog : table for each user for favorites