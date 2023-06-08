CREATE DATABASE IF NOT exists lesson1; 
USE lesson1; 
DROP TABLE IF EXISTS DZ1;
CREATE TABLE DZ1
(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	ProductName VARCHAR(45), 
    Manufacturer VARCHAR(20),
    ProductCount INT,
    Price INT
);

INSERT DZ1 (ProductName, Manufacturer, ProductCount, Price) 
VALUES
	("iPhone X","Apple", 3, 76000), 
    ("iPhone 8","Apple", 2, 51000),
    ("Galaxy S9","Samsung", 2, 56000),
    ("Galaxy S8","Samsung", 1, 41000),
    ("P20 Pro","Huawei", 5, 36000);

-- Задание 1
SELECT * FROM DZ1; 

-- Задание 2
SELECT ProductName, Manufacturer, Price 
FROM DZ1
WHERE ProductCount > 2;

-- Задание 3
SELECT ProductName
FROM DZ1
WHERE Manufacturer = "samsung"; 

-- Задание 4
SELECT ProductName, Manufacturer 
FROM DZ1
WHERE ProductCount * Price > 100000 AND ProductCount * Price < 145000;

-- Задание 4.1
SELECT ProductName 
FROM DZ1
WHERE ProductName LIKE "iPhone%";

-- Задание 4.2
SELECT ProductName 
FROM DZ1
WHERE ProductName LIKE "Galaxy%";

-- Задание 4.3
SELECT ProductName 
FROM DZ1
WHERE ProductName LIKE "%0%" OR ProductName LIKE "%1%" OR ProductName LIKE "%2%" 
OR ProductName LIKE "%3%" OR ProductName LIKE "%4%" OR ProductName LIKE "%5%" 
OR ProductName LIKE "%6%" OR ProductName LIKE "%7%" OR ProductName LIKE "%8%" 
OR ProductName LIKE "%9%";

-- Задание 4.4
SELECT ProductName 
FROM DZ1
WHERE ProductName LIKE "%8%";





