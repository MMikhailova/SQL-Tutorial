-- SQL TUTORIAL

-- Table of content

-- SQL
-- RDBMS
-- 1. **Database**
--     - 1.1 CREATE A DATABASE
--     - 1.2 USE DATABASE
--     - 1.3 DROP DATABASE

-- 2. **Tables**
--     - 2.1 DATA TYPES
--     - 2.2 INSERT
--     - 2.3 SELECT
--     - 2.4 UPDATE
--     - 2.5 ALTER
--     - 2.6 DROP
--     - 2.7 DELETE
--     - 2.8 WHERE
--         - 2.8.1 OPERATORS
--             - Arithmetic Operators
--             - Comparison Operators
--             - Logical Operators
--             - LIKE Operator
--     - 2.9 LIMIT
--     - 2.10 ORDER BY

-- 3. **SQL Constraints**
--     - 3.1 NOT NULL Constraint
--     - 3.2 UNIQUE Key Constraint
--     - 3.3 DEFAULT Value Constraint
--     - 3.4 CHECK Value Constraint

-- 4. **Joins**
--     - 4.1 INNER JOIN
--     - 4.2 LEFT JOIN
--     - 4.3 RIGHT JOIN

-- 5. **IS NULL**
   
-- 6. **ALTER TABLE**

-- 7. **SQL Injections**

-- 8. **COMMIT and ROLLBACK**



-- "SQL: SQL is a language used to interact with and manage relational databases. 
-- while MySQL is a specific database management system that uses SQL as its language."

-- "RDBMS: A Relational database management system (RDBMS) is a database management system (DBMS)
--  that is based on the relational model 
--  i.e MySQL
-- MS SQL Server
-- ORACLE
-- MS ACCESS
-- PostgreSQL
-- SQLite"

--  "1. DATABASE: Relational databases are used to store and manage the data objects that are related to one another, 
--  i.e. the process of handling data in a relational database is done based on a relational model."

-- "1.1 CREATE A DATABASE"
-- CREATE DATABASE Sql_tutorial;

-- "1.2 USE DATABASE: serves to set a database as the default database"
-- USE Sql_tutorial;

-- "1.3 DROP DATABASE: is used to delete an existing database along with all the data within"
--  DROP DATABASE Sql_tutorial;

-- "2. TABLES: Database tables in any RDBMS are used to store the data in the form of some structures (fields and records)."
--  "FIELD (COLUMN): a field is a column defining the type of data to be stored in a table "
--  "RECORD: is a row containing actual data"

--  "2.1 DATA TYPES: An SQL data type refers to the type of data which can be stored in a column of a database table."
-- "Main data types: String, Numeric, Date and Time"
-- "CREATE A TABLE that holds the DATE, STRING, NUMERIC type of data"
-- USE Sql_tutorial;
-- CREATE TABLE temperature_data (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     year YEAR(4),
--     month INT ,
--     month_name VARCHAR(40),
--     average_temperature DECIMAL(5, 2),
-- );

-- "2.2 INSERT: The SQL INSERT INTO Statement is used to add new rows of data into a table in the database."
-- USE Sql_tutorial;
-- INSERT INTO temperature_data (month_name, year,month, average_temperature) VALUES
-- ('Jan', 2020, 1, 3.5), ('Feb', 2020, 2, 4.8), ('Mar', 2020, 3, 7.2), 
-- ('Apr', 2020, 4, 10.0), ('May', 2020, 5, 15.2), ('Jun', 2020, 6, 18.7), 
-- ('Jul', 2020, 7, 21.4), ('Aug', 2020, 8, 20.1), ('Sep', 2020, 9, 18.0), 
-- ('Oct', 2020, 10, 12.5), ('Nov', 2020, 11, 8.3), ('Dec', 2020, 12, 4.9), 
-- ('Jan', 2021, 1, 4.0), ('Feb', 2021, 2, 5.1), ('Mar', 2021, 3, 8.3), 
-- ('Apr', 2021, 4, 12.1), ('May', 2021, 5, 17.0), ('Jun', 2021, 6, 20.9), 
-- ('Jul', 2021, 7, 23.4), ('Aug', 2021, 8, 22.3), ('Sep', 2021, 9, 20.0), 
-- ('Oct', 2021, 10, 15.2), ('Nov', 2021, 11, 10.1), ('Dec', 2021, 12, 6.2), 
-- ('Jan', 2022, 1, 5.5), ('Feb', 2022, 2, 6.8), ('Mar', 2022, 3, 9.7), 
-- ('Apr', 2022, 4, 13.2), ('May', 2022, 5, 17.8), ('Jun', 2022, 6, 21.6), 
-- ('Jul', 2022, 7, 24.1), ('Aug', 2022, 8, 23.5), ('Sep', 2022, 9, 20.8), 
-- ('Oct', 2022, 10, 16.2), ('Nov', 2022, 11, 11.5), ('Dec', 2022, 12, 7.0), 
-- ('Jan', 2023, 1, 4.8), ('Feb', 2023, 2, 5.9), ('Mar', 2023, 3, 8.7), 
-- ('Apr', 2023, 4, 12.4), ('May', 2023, 5, 16.9), ('Jun', 2023, 6, 21.0), 
-- ('Jul', 2023, 7, 24.5), ('Aug', 2023, 8, 23.8), ('Sep', 2023, 9, 21.5), 
-- ('Oct', 2023, 10, 17.0), ('Nov', 2023, 11, 12.3), ('Dec', 2023, 12, 8.5);


-- "2.3 SELECT: The SQL SELECT Statement is used to fetch the data from a database table
-- which returns this data in the form of a table."
-- USE Sql_tutorial;
-- SELECT * FROM temperature_data;

-- "2.4 UPDATE: The SQL UPDATE Statement is used to modify the existing records in a table."
-- USE Sql_tutorial;
-- UPDATE temperature_data 
-- SET average_temperature = average_temperature * 1.8 + 32

-- "2.5 ALTER: The ALTER TABLE command can add or delete columns, create or destroy indexes, 
-- change the type of existing columns, or rename columns or the table itself."
-- USE Sql_tutorial;
-- ALTER TABLE temperature_data RENAME COLUMN average_temperature TO average_temperature_f

-- "2.6 DROP: is used to remove a table's structure and its data"
-- USE Sql_tutorial;
-- DROP TABLE temperature_data;
-- "2.7 DELETE: The SQL DELETE TABLE statement is used to delete the existing records from a table in a database"
-- USE Sql_tutorial;
-- DELETE FROM temperature_data;

-- "2.7 RENAME or ALTER: is used to change the name of the table"
-- USE Sql_tutorial;
-- RENAME TABLE temperature_data TO average_temperature;

-- USE Sql_tutorial;
-- ALTER TABLE average_temperature RENAME AS temperature_data;

-- "2.8 WHERE:The SQL WHERE clause is used to filter the results obtained by the statements such as SELECT, UPDATE and DELETE etc."
-- "2.8.1 OPERATORS: An SQL operator is a reserved word or a character used primarily in an WHERE clause to perform operation(s),
--  such as comparisons and arithmetic operations. These Operators are used to specify conditions in an SQL statement and to serve as conjunctions for multiple conditions in a statement."


-- "Arithmetic operators"
-- USE Sql_tutorial;
-- SELECT year, month, average_temperature, average_temperature * 1.8 + 32 AS fahrenheit_temperature
-- FROM temperature_data;

-- "Comparison operators"
-- USE Sql_tutorial;
-- SELECT * FROM temperature_data  WHERE average_temperature>=20

-- "Logical operators"
-- "AND and OR: are used to combine multiple conditions to narrow data in an SQL
-- statement. These two operators are called conjunctive operators."
-- USE Sql_tutorial;
-- SELECT * FROM temperature_data  WHERE average_temperature>=20 AND month_name LIKE '%n'

-- USE Sql_tutorial;
-- SELECT * FROM temperature_data  WHERE year> 2020 OR month >2 

-- "LIKE: It is used to filter the rows based on the given pattern.
-- These patterns are specified using Wildcards."
-- "%"
-- USE Sql_tutorial;
-- SELECT * 
-- FROM temperature_data 
-- WHERE year LIKE "%23"

-- "_"
-- USE Sql_tutorial;
-- SELECT * 
-- FROM temperature_data 
-- WHERE month LIKE "_1"

-- "COUNT"
-- USE Sql_tutorial;
-- SELECT COUNT(*)
-- FROM temperature_data
-- WHERE average_temperature > 20;
-- "SUM"
-- USE Sql_tutorial;
-- SELECT SUM(average_temperature)
-- FROM temperature_data
-- WHERE month_name = 'Jan'
-- "AVG"
-- USE Sql_tutorial;
-- SELECT AVG(average_temperature)
-- FROM temperature_data
-- WHERE month_name = 'Jan'

-- "2.9 LIMIT: The SQL LIMIT clause is used to fetch a TOP N number or X percent records from a table."
-- USE Sql_tutorial;
-- SELECT * FROM temperature_data 
-- LIMIT 23;

-- "3.0 ORDER BY: The SQL ORDER BY clause is used to sort the data in ascending or descending order, based on one or
-- more columns"

-- "Ascending order:"
-- USE Sql_tutorial;
-- SELECT * FROM temperature_data 
-- ORDER BY month_name, id LIMIT 5

-- "Descending order:"
-- USE Sql_tutorial;
-- SELECT * 
-- FROM temperature_data 
-- ORDER BY average_temperature DESC;



-- "4.0 SQL Constraints: SQL Constraints are the rules applied to a data columns or the complete table to limit the type of data that can go into a table." 

-- "4.1 NOT NULL Constraint"
-- USE Sql_tutorial;
-- CREATE TABLE SEASONS (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     month INT NOT NULL,
--    season VARCHAR(40)
-- );
-- USE Sql_tutorial;
-- INSERT INTO SEASONS (month, season) VALUES
-- (1, 'Winter'),
-- (2, 'Winter'),
-- (3, 'Spring'),
-- (4, 'Spring'),
-- (5, 'Spring'),
-- (6, 'Summer'),
-- (7, 'Summer'),
-- (8, 'Summer'),
-- (9, 'Fall'),
-- (10, 'Fall'),
-- (11, 'Fall'),
-- (12, 'Winter')

-- USE Sql_tutorial;
-- SELECT * FROM temperature_data;

-- "4.2 UNIQUE Key Constraint"
-- USE Sql_tutorial;
-- ALTER TABLE SEASONS ADD CONSTRAINT CONST UNIQUE(month);

-- "DEFAULT Value Constraint"
-- USE Sql_tutorial;
-- ALTER TABLE temperature_data
-- ALTER COLUMN month_name SET DEFAULT 'No data';

-- "4.3 CHECK Value Constraint"
-- USE Sql_tutorial;
-- DROP TABLE SEASONS;
-- USE Sql_tutorial;
-- CREATE TABLE SEASONS (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     month INT NOT NULL CHECK (month<=12) UNIQUE,
--    season VARCHAR(40)
-- );

-- "5.0 JOINS: The SQL Joins clause is used to combine records from two or more tables in a database."
-- "5.1 INNER JOIN: The SQL Inner Join is a type of join that combines multiple tables by retrieving records 
-- that have matching values in both tables (in the common column)."

-- USE Sql_tutorial;
-- CREATE TABLE customers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     cust_name VARCHAR(50) NOT NULL,
--     email VARCHAR(50) NOT NULL UNIQUE
-- )
-- USE Sql_tutorial;
-- CREATE TABLE products (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     prod_name VARCHAR(50) NOT NULL
-- )

-- CREATE TABLE orders(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     date DATE NOT NULL,
--     customer_id INT REFERENCES customers(id),
--     product_id INT REFERENCES products(id)
-- )

-- USE Sql_tutorial;
-- INSERT INTO customers (cust_name, email) VALUES ('Maria','slin@gmail.com'),('Eva','sre@gmail.com')
-- USE Sql_tutorial;
-- INSERT INTO products (prod_name) VALUES ('laptop'), ('mobile phone');
-- USE Sql_tutorial;
-- INSERT INTO orders (date, customer_id, product_id) VALUES ('2023-10-31',1,1)
-- USE Sql_tutorial;
-- SELECT * FROM products;

-- USE Sql_tutorial;
-- SELECT *
-- FROM customers
-- INNER JOIN orders ON customers.id = orders.customer_id 
-- INNER JOIN products ON products.id = orders.product_id;

-- USE Sql_tutorial;
-- DROP TABLE customers, products

-- "5.2 LEFT JOIN: Retrieves all the records from the first table,
-- Matching records from the second table and NULL values in the unmatched rows."

-- USE Sql_tutorial;
-- SELECT *
-- FROM customers
-- LEFT JOIN orders ON customers.id = orders.customer_id

-- "5.3 RIGHT JOIN: Retrieves all the records from the second table,
-- Matching records from the first table and NULL values in the unmatched rows."

-- USE Sql_tutorial;
-- SELECT *
-- FROM customers
-- RIGHT JOIN orders ON customers.id = orders.customer_id


-- "6.0 IS NULL: IS NULL operator is used to check whether a value in a column is NULL.
-- It returns true if the column value is NULL; otherwise false."

-- USE Sql_tutorial;
-- SELECT *
-- FROM products;
-- LEFT JOIN orders ON customers.id = orders.customer_id
-- WHERE orders.customer_id IS NULL

-- "7.0 ALTER TABLE: is used to add, delete or modify columns in an existing table."

-- USE Sql_tutorial;
-- ALTER TABLE products ADD product_desc VARCHAR(40)
-- ALTER TABLE products DROP product_desc
-- ALTER TABLE customers MODIFY email VARCHAR(40) NOT NULL

-- "8.0 INJECTIONS: is a type of security attack that exploits a vulnerability in a database by executing malicious queries."
-- $name = "Maria'; DELETE FROM CUSTOMERS;";
-- mysql_query("SELECT * FROM CUSTOMSRS WHERE name='{$name}'");

-- "9.0 COMMIT: The COMMIT command saves all transactions to the database since the last COMMIT or ROLLBACK command."

-- CREATE TABLE Test (
--     id INT NOT NULL,
--     value VARCHAR(40)
-- )
-- USE Sql_tutorial;
-- SET autocommit = 0;

-- START TRANSACTION;
-- INSERT INTO Test (id, value) VALUES (4, 'Data 4'), (5, 'Data 5');

-- SELECT * FROM Test;

-- ROLLBACK;

-- SELECT * FROM Test;