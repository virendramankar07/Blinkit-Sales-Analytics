-- CREATE DATABASE blinkit_db;
USE blinkit_db;

-- CREATE TABLE blinkit_data (
--     item_identifier VARCHAR(20),
--     item_weight FLOAT,
--     item_fat_content VARCHAR(20),
--     item_visibility FLOAT,
--     item_type VARCHAR(100),
--     item_mrp FLOAT,
--     outlet_identifier VARCHAR(20),
--     outlet_establishment_year INT,
--     outlet_size VARCHAR(20),
--     outlet_location_type VARCHAR(20),
--     outlet_type VARCHAR(50),
--     item_outlet_sales FLOAT
-- );


-- CREATE TABLE blinkit_data (
--     item_identifier VARCHAR(20),
--     item_weight FLOAT,
--     item_fat_content VARCHAR(20),
--     item_visibility FLOAT,
--     item_type VARCHAR(100),
--     item_mrp FLOAT,
--     outlet_identifier VARCHAR(20),
--     outlet_establishment_year INT,
--     outlet_size VARCHAR(20),
--     outlet_location_type VARCHAR(20),
--     outlet_type VARCHAR(50),
--     item_outlet_sales FLOAT
-- );

USE blinkit_db;

SELECT DATABASE();

SHOW TABLES;

DESCRIBE blinkit_data;

SELECT * FROM blinkit_data LIMIT 5;

SELECT database();

SELECT * FROM blinkit_db.blinkit_data;

SELECT COUNT(*) FROM blinkit_data;

SELECT item_type, 
       SUM(item_outlet_sales) AS total_sales
FROM blinkit_data
GROUP BY item_type
ORDER BY total_sales DESC;

SELECT outlet_size, 
       SUM(item_outlet_sales) AS total_sales
FROM blinkit_data
GROUP BY outlet_size;

SELECT outlet_location_type, 
       SUM(item_outlet_sales) AS total_sales
FROM blinkit_data
GROUP BY outlet_location_type;


SELECT outlet_type, 
       SUM(item_outlet_sales) AS total_sales,
       AVG(item_outlet_sales) AS avg_sales
FROM blinkit_data
GROUP BY outlet_type;


SELECT outlet_type, 
       SUM(item_outlet_sales) AS total_sales,
       AVG(item_outlet_sales) AS avg_sales
FROM blinkit_data
GROUP BY outlet_type;
