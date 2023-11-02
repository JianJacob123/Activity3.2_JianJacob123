CREATE DATABASE hero;

--1. Create Tables
CREATE TABLE class(class_id INT NOT NULL PRIMARY KEY,
				  class_name VARCHAR(255) NOT NULL,
				  class_description TEXT);

CREATE TABLE item(item_id INT NOT NULL PRIMARY KEY,
item_name VARCHAR(255) NOT NULL, item_description TEXT, item_type VARCHAR(50));

CREATE TABLE hero(hero_id INT NOT NULL PRIMARY KEY,
hero_name VARCHAR(255) NOT NULL, is_active BOOLEAN, class_id int not null,
				 FOREIGN KEY (class_id) REFERENCES class(class_id));


CREATE TABLE player(player_id INT NOT NULL PRIMARY KEY,
player_name VARCHAR(255) NOT NULL, player_level INT, player_experience INT, hero_id INT NOT NULL, FOREIGN KEY(hero_id) REFERENCES hero(hero_id));

CREATE TABLE skill(skill_id INT NOT NULL PRIMARY KEY, skill_name VARCHAR(255) NOT NULL, skill_description TEXT,class_id INT NOT NULL, 
FOREIGN KEY(class_id) REFERENCES class(class_id));

CREATE TABLE HeroItem(hero_item_id INT NOT NULL PRIMARY KEY, hero_id INT NOT NULL, FOREIGN KEY(hero_id) REFERENCES hero(hero_id), item_id INT NOT NULL,
FOREIGN KEY (item_id) REFERENCES item(item_id));