-- MySQL dump 10.13  Distrib 8.0.13
--
-- Host: localhost    Database: APP_STORE
-- ------------------------------------------------------
CREATE DATABASE IF NOT EXISTS APP_STORE;
USE APP_STORE;

--
-- Table structure for table `APP STORE`
--
DROP TABLE IF EXISTS app;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS developer;

CREATE TABLE category (
c_id INT(6) UNSIGNED PRIMARY KEY,
category_name VARCHAR(30) NOT NULL
);


CREATE TABLE developer (
d_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
dev_name VARCHAR(30) NOT NULL,
website VARCHAR(30) NOT NULL
);


CREATE TABLE app (
app_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
app_name VARCHAR(30) NOT NULL,
description VARCHAR(50) NOT NULL,
rating DOUBLE(2,1) DEFAULT 1.0 CHECK (rating<=5.0 AND rating>=0.0),
cost DOUBLE(8,2) DEFAULT 0.0,
size DOUBLE(8,2) NOT NULL,
download_count INT(10) DEFAULT 0,
c_id INT(6) UNSIGNED NOT NULL,
d_id INT(6) UNSIGNED NOT NULL,
FOREIGN KEY (c_id) REFERENCES category(c_id),
FOREIGN KEY (d_id) REFERENCES developer(d_id)
);





--
-- Dumping data for table `CATEGORY`
--
INSERT INTO category VALUES (1,'utilities'),
(2,'books'),
(3,'education'),
(4,'entertainment'),
(5,'finance'),
(6,'food'),
(7,'health'),
(8,'kids'),
(9,'lifestyle'),
(10,'music'),
(11,'games'),
(12,'social'),
(13,'productivity');


INSERT INTO developer VALUES (1,'Facebook.Inc','www.fb.com'),
(2,'Jubilient','www.jb.com'),
(3,'Tencent','www.10cent.com'),
(4,'T-series','www.tseries.com');

INSERT INTO app VALUES (1,'Instagram','Social networking application.',4.2,0.00,20.00,150500,12,1),
(2,'Facebook','Social networking application',4.1,0.00,20.00,51500,12,1),
(3,'PUBG','Online Action Game',4.8,20.00,200.00,98000,11,3),
(4,'Zomato','Food delivery Application',4.5,0.00,80.00,120000,6,2),
(5,'Spotify','Music Streaming application',4.1,299.99,120.00,87000,10,4);
























-- Dump completed
