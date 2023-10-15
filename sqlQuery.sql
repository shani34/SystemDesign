1. Find the 3rd hight salary in employee table

SELECT * FROM employee ORDER BY salary DESC LIMIT 2,1; (kis row ko select krna h, aur kitni row krne h)
OR 
SELECT salary FROM employee ORDER BY salary DESC LIMIT 1,OFFSET 2;

2.  Find the Nth hight salary in employee table without using LIMIT:

select salary from employee e1 where N-1=(
select count(DISTINCT salary) from employee e2 where e2.salary>e1.salary
);

3. Write query to find the duplicate query:
select *, count(empid) from employee GROUP BY empid HAVING count(empid)>1; 

(* aur count use krte tb hamko group by aur having bhi use krna h)

4. write query to calculate the even and odd record:
for EVEN:
SELECT * FROM employee WHERE MOD(empid,2)==0;

for ODD:
SELECT * FROM employee WHERE MOD(empid,2)==1;

5. How do you copy all the rows from a table:
CREATE TABLE newTable AS SELECT * FROM employee; (will copy all the row from emp table)
//for particular row
CREATE TABLE newTable AS SELECT salary,empid FROM employee;
//for schema
CREATE TABLE newTable AS SELECT * FROM employee WHERE 3=4;

6. write the query to retriev the employee working in the same department:

SELECT * FROM employee e, employee e1
where e.department=e1.department
and e.empid!=e1.empid

7. write query which ends with a and contains five letter:
select * from employee where empName LIKE '____a';(with 4 underscore);


