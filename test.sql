SELECT * from jobs1
SELECT * from employees1
SELECT * from departments1


--1.create a new table called positon1 that table contains following columns and constraints
--column1->position_code primary key,column2 position_name not null (constraints),
--column3->department_id foreign key for department1 oda department_id's foreign key
--column3->jobs_id foreign key jobs1 oda job_id's foreign key
--column4->salary that has a conditon of accept positive values
--column->sno(serialno) that should create automatically create the values that values start from 50 and increment 5(50,5)
--column6-> remarks default values of not appliclble
--column7->positon_name2 that has unique constaint
--column8->status binary values
--column9->date it has no constraints
CREATE TABLE position18(position_code char(100) primary key,position_name varchar(256) not null,department_id int foreign key references departments1(department_id),
jobs_id int foreign key references jobs1(job_id),salary int,sno tinyint ,remarks varchar(max) default('notapplicable'),positon_name2 varchar(256) unique,
Status bit, date smalldatetime);

select * from position18;


--2.add a new column remarks2 in the same table that can accept null values also that can accept any number of ahpha numeric values also delete the column called sno from the same table.

alter table position18 add remarks2 numeric;


--3.create a  one singe sql statement to insert five rows of a data in the table which you modified recently.

insert into position18 values(1,'x',1,1,10000,50,default,'x1',0,'2023/03/25 06:00:23',''),
(2,'y',2,2,11000,55,default,'x2',1,'2023/03/24 06:00:23',''),
(3,'z',3,3,12000,60,default,'x3',0,'2023/03/23 06:00:23',''),
(4,'a',4,4,13000,65,default,'x4',1,'2023/03/22 06:00:23',6),
(5,'b',5,5,14000,70,default,'x5',1,'2023/03/21 06:00:23',9);


--4.create a new table called position2 by using same structue and same date from the positon one table
SELECT * from position18 as position2

--5.create a varriable name called name and that has has the numeric value 50 so  the variable values by adding  numberic values of 10

 DECLARE @name INT

 SET @name=50

 SELECT @name + 10

--6.get two text inputs and values those inputs 1st values tamil 2nd selvan i need an output ->name(col name): tamil selvan

  SELECT 'Tamil'+' Selvan' AS name;

--7.select the column name job_id hire date from employees1 table .result col name job and date.
      SELECT job_id AS job, hire_date as date from employees1 

--8.employess one table la first name venu from nanager id 101 iruka kudathu
SELECT first_name from employees1
WHERE manager_id=101;

--9.need the uniques combination dep id and job id from emp1 table
  SELECT distinct department_id, job_id from employees1

--10.i need a department names from the location 2500 and 1700

  SELECT department_name from departments1
  WHERE location_id=1700 OR location_id=2500
--11.select the emp first name who dosen't have managers.

  SELECT first_name from employees1
  WHERE manager_id is null

--12.need the first name of the employees who are all from dep6 and job id 9.

  SELECT first_name  from employees1
  WHERE department_id=6 AND job_id=9 


--13.need the employee details whos firsat name statr with letter A .
 SELECT first_name  from employees1
  WHERE first_name LIKE ('a%');
--14. orderr the employee info by dep job salary
  SELECT department_id, job_id, salary FROM employees1
   order by department_id, job_id, salary ASC

--15. emp info who join after end of 1993 and order the result based on n their salary high to low

  SELECT salary from employees1
  
  WHERE hire_date='1994/06/07'
  order by salary DESC

--16.update the salary of the emp who has dep 6 jon id 9

  UPDATE employees1  
  SET salary=5000
  WHERE department_id=6 AND job_id=9

--17.modify the president job salary renge min to 1 lak max to 5lak it from jobs table
  UPDATE jobs1
  set min_salary=100000, max_salary=500000
  WHERE job_title='President'

--18.what is the total emp salaray from dep 6 job id 9

  SELECT SUM(salary) FROM employees1
  WHERE department_id=6 AND job_id=9

--19.del the emp info whos first name is james
DELETE  FROM employees1
WHERE first_name='james'

--20 how many distinct count of emp available in dep6 job 9

SELECT distinct COUNT(employee_id)FROM employees1

