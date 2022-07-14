create database clients
use clients
create table CLIENT(clientno int primary key,name varchar(100),client_referred_by varchar (100))
INSERT INTO client VALUES (101,"muskan ",501)
INSERT INTO client VALUES (102,"paesha ",502)
INSERT INTO client VALUES (103,"khayati",503)
INSERT INTO client VALUES (104,"himesh",504)
INSERT INTO client VALUES (105,"sarthak",505)
desc client
select * from client
delete from CLIENT
SET SQL_SAFE_UPDATES = 0
CREATE Table ORDER_(orderno int PRIMARY KEY, clientno int NOT NULL, order_date DATE, empid INT NOT NULL)
INSERT INTO order_ VALUES (201,101,"2022-02-22",10021)
INSERT INTO order_ VALUES (202,102,"2014-11-02",10022)
INSERT INTO order_ VALUES (203,103,"2015-03-12",10023)
INSERT INTO order_ VALUES (204,104,"2004-08-13",10024)
INSERT INTO order_ VALUES (205,105,"2010-02-11",10025)
select * from order_
CREATE TABLE ORDER_LINE (orderno int PRIMARY KEY, order_line_ int, item_number int, no_of_items int, item_cost INT ,shipping_date DATE)
INSERT INTO order_line VALUES (201,12000,001,6,2000,"2022-02-24")
INSERT INTO order_line VALUES (202,1797,002,3,599,"2014-12-14")
INSERT INTO order_line VALUES (203,19900,003,1,19900,"2015-04-24")
INSERT INTO order_line VALUES (204,3598,004,2,1799,"2004-08-14")
INSERT INTO order_line VALUES (205,1299,005,1,1299,"2010-02-24")
select * from order_line
CREATE TABLE ITEM (item_number int PRIMARY KEY, item_type VARCHAR(50), cost INT)
INSERT INTO item VALUES (001,"Colorfit Pro 2 Smartwatch",2000)
INSERT INTO item VALUES (002,"Lcd Writing Tablet",599)
INSERT INTO item VALUES (003,"OnePlus Nord CE 2 Lite 5G",19900)
INSERT INTO item VALUES (004,"boAt Wave Lite Smartwatch",1799)
INSERT INTO item VALUES (005,"Nokia 105 Single SIM (Black)",1299)
select * from item
CREATE TABLE EMPLOYEE(empid int PRIMARY KEY,emp_type VARCHAR(50),deptno int,salary BIGINT,firstname VARCHAR(50),lastname VARCHAR(50))
INSERT INTO EMPLOYEE VALUES (10021,"Full-time employee",901,120000,"muskan","singh")
INSERT INTO employee VALUES (10022,"Part-time employee",902,12000,"paesha","mittal")
INSERT INTO employee VALUES (10023,"Temporary employee",903,122000,"khayati","luthra")
INSERT INTO employee VALUES (10024,"Part-time employee",904,124000,"himesh","maandi")
INSERT INTO employee VALUES (10025,"Part-time employee",905,143000,"sarthak","jain")
select *from employee
delete from employee
SELECT * FROM client ORDER BY name DESC
SELECT item_number,order_line_ AS TOTAL_COST FROM ORDER_LINE
SELECT DISTINCT clientno AS client_numbers FROM client
SELECT clientno AS "<clientno>",orderno AS "<orderno>" from order_
SELECT * FROM order_line where item_number BETWEEN 2 AND 5 OR item_number>2
SELECT * FROM order_line where item_cost NOT IN(1000,2000,3000) OR NOT(orderno=1000)
SELECT name,order_date FROM client,order_ WHERE client.clientno = order_.clientno 
SELECT clientno AS "<clientno>",orderno AS "<orderno>" from order_
SELECT name,order_date FROM client JOIN order_ ON client.clientno = order_.clientno 
SELECT name,order_date FROM client INNER JOIN order_ ON client.clientno = order_.clientno
SELECT UPPER(name) FROM client
SELECT lower(name) FROM client
SELECT SUBSTRING(name,2,5) FROM client
 


















