# 1757. Recyclable and Low Fat Products

/*
Table: Products

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
product_id is the primary key (column with unique values) for this table.
low_fats is an ENUM (category) of type ('Y', 'N',) where 'Y' means this
product is low fat and 'N' means it is not.
recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this
product is recyclable and 'N' means it is not.

Write a solution of find ids of products that are both low fat and recycalble.

Return the result table in any order.

The result format is in the following example.

Example 1:

Input: 
Products table:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+
Output: 
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+
Explanation: Only products 1 and 3 are both low fat and recyclable.
*/
CREATE DATABASE IF NOT EXISTS 1757_Recyclable_and_Low_Fat_Products;
USE 1757_Recyclable_and_Low_Fat_Products;

CREATE TABLE Products (
    product_id int,
    low_fats ENUM ('Y', 'N'),
    recyclable ENUM ('Y', 'N')
);

INSERT INTO Products (product_id, low_fats, recyclable) VALUES ("0", "Y", "N");
INSERT INTO Products (product_id, low_fats, recyclable) VALUES ("1", "Y", "Y");
INSERT INTO Products (product_id, low_fats, recyclable) VALUES ("2", "N", "Y");
INSERT INTO Products (product_id, low_fats, recyclable) VALUES ("3", "Y", "Y");
INSERT INTO Products (product_id, low_fats, recyclable) VALUES ("4", "N", "N");

# SQL Query

SELECT
    product_id
FROM
    products
WHERE
    low_fats = "Y"
AND
    recyclable = "Y" ;