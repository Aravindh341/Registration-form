CREATE TABLE converse111(empid int primary key not null, productname varchar(25) not null, price money null, descrition varchar(max) null)
insert converse111 (empid, productname, price)
    values (1, 'Clamp', 12.48);
    SELECT * FROM converse111;
    insert into converse111 values(2, 'pin', 12.34), (3, 'sdfaf',45.67), (4, 'sdfaf',45.67), (5, 'sdfaf',45.67);
    alter table converse111 drop column descrition;
    alter table  convers111 add phone int(10);
    truncate table converse111;

    SELECT * from converse111;

    ALTER TABLE converse111 DROP COLUMN purchased


ALTER TABLE converse111
ADD  purchased DATE

insert into converse111 values(5,'board', 4, '2008/04/15')


    UPDATE converse111
    SET price = 5000
    WHERE empid=5

ALTER TABLE converse111
RENAME COLUMN purchased TO purchaseddate;

    SELECT * FROM converse111
    WHERE purchased !='2025/04/20' 

    UPDATE converse111
    SET price = '34'
    WHERE empid= 5;
 
 SELECT * FROM converse111
    WHERE  price>12.48 AND purchased <='2025/04/10'

    DELETE from converse111
    WHERE empid=5

   
    SELECT top 3 empid,price from converse111
    
    ALTER TABLE converse111
    ALTER COLUMN price INT

    SELECT purchased AS buydate from converse111

    SELECT empid from converse111
    ORDER BY empid ASC

    SELECT * from converse111
    WHERE productname LIKE '%r_'

    SELECT  purchased from converse111
 ORDER BY purchased


 DECLARE @mark1 INT

 DECLARE @mark2 INT

 SET @mark1=100
 SET @mark2=200

 SELECT @mark1
 SELECT @mark2
SELECT * FROM converse111
WHERE price<=15000 OR purchased>='2018/04/20'


SELECT * from pravin1
WHERE age<24 AND NOT salary<3000


UPDATE pravin1
SET empName='elakkiya'
WHERE empid=15


SELECT 'hai'+'welcome'



CREATE TABLE converse1112(empid int FOREIGN KEY REFERENCES converse111(empid))

SELECT * FROM converse111

SELECT distinct count(price) FROM converse111

