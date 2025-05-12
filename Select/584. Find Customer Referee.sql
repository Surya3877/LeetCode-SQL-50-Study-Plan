# 584. Find Customer Referee

/*
Table: Customer

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
In SQL, id is the primary key colum for this table.
Each row of this table indicates the id of a customer, their name, and 
the id of the customer who referee them.

Find the names of the customer that are not refereed by the customer with id = 2.

Return the result table in any order.

The result format in the following example.

Example 1:

Input: 
Customer table:
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+
Output: 
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+
*/

CREATE DATABASE IF NOT EXISTS 584_find_customer_referee;
USE 584_find_customer_referee;

CREATE TABLE IF NOT EXISTS Customer (
    id int,
    name VARCHAR(25),
    referee_id INT
);

INSERT INTO Customer (id, name, referee_id) VALUES ('1', 'Will', NULL);
INSERT INTO Customer (id, name, referee_id) VALUES ('2', 'Jane', NULL);
INSERT INTO Customer (id, name, referee_id) VALUES ('3', 'Alex', '2');
INSERT INTO Customer (id, name, referee_id) VALUES ('4', 'Bill', NULL);
INSERT INTO Customer (id, name, referee_id) VALUES ('5', 'Zack', '1');
INSERT INTO Customer (id, name, referee_id) VALUES ('6', 'Mark', '2');

# SQL Query

SELECT 
    name
FROM
    Customer
WHERE
    referee_id !=2
OR
    referee_id IS NULL;


