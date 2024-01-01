--DQL (DATA QUERY language)

-- Creating Employees table
CREATE TABLE Employees (
    EmployeeID INT,
    FirstName VARCHAR(250),
    LastName VARCHAR(250),
    Gender varchar(1),
    BirthDate DATE,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Creating Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);




-- Inserting sample data into Employees table
INSERT INTO Employees 
VALUES
    (1, 'John', 'Doe', 'M', '1990-05-15', 'IT', 75000.00),
    (2, 'Jane', 'Smith', 'F', '1988-08-22', 'HR', 65000.00),
    (3, 'Bob', 'Johnson', 'M', '1995-03-10', 'Finance', 80000.00),
    (4, 'Alice', 'Williams', 'F', '1992-11-28', 'Marketing', 70000.00),
    (5, 'Charlie', 'Brown', 'M', '1985-07-05', 'IT', 90000.00),
	(6, 'Eva', 'Davis', 'F', '1998-09-17', 'Finance', 85000.00),
    (7, 'Tom', 'Miller', 'M', '1987-04-02', 'Marketing', 72000.00),
    (8, 'Grace', 'Taylor', 'F', '1994-12-12', 'HR', 68000.00),
    (9, 'Sam', 'Anderson', 'M', '1991-06-25', 'IT', 78000.00),
    (10, 'Olivia', 'Moore', 'F', '1989-02-14', 'Finance', 82000.00),
    (11, 'Ryan', 'Brown', 'M', '1996-01-30', 'Marketing', 70000.00),
    (12, 'Sophia', 'Clark', 'F', '1986-10-08', 'HR', 70000.00),
    (13, 'Liam', 'Johnson', 'M', '1993-08-18', 'IT', 75000.00),
    (14, 'Emma', 'White', 'F', '1997-07-12', 'Finance', 78000.00),
    (15, 'Mason', 'Hill', 'M', '1984-04-22', 'Marketing', 92000.00),
    (16, 'Ava', 'Walker', 'F', '1990-03-05', 'HR', 68000.00),
    (17, 'Logan', 'Turner', 'M', '1994-11-15', 'IT', 80000.00),
    (18, 'Mia', 'Jones', 'F', '1987-09-28', 'Finance', 75000.00),
    (19, 'Jackson', 'Harris', 'M', '1992-06-10', 'Marketing', 85000.00),
    (20, 'Sophie', 'Baker', 'F', '1985-01-14', 'HR', 72000.00),
    (21, 'Lucas', 'Wright', 'M', '1997-04-30', 'IT', 78000.00),
    (22, 'Chloe', 'Turner', 'F', '1993-12-08', 'Finance', 76000.00),
    (23, 'Ethan', 'Mitchell', 'M', '1988-10-25', 'Marketing', 90000.00),
    (24, 'Lily', 'Carter', 'F', '1995-02-18', 'HR', 69000.00),
    (25, 'Noah', 'Harrison', 'M', '1989-07-20', 'IT', 82000.00);


-- Inserting sample data into Department table
INSERT INTO Department 
VALUES
    (1, 'Human Resources'),
    (2, 'Information Technology'),
    (3, 'Finance'),
    (4, 'Marketing'),
    (5, 'Operations'),
    (6, 'Sales'),
    (7, 'Customer Service'),
    (8, 'Research and Development'),
    (9, 'Legal'),
    (10, 'Public Relations'),
    (11, 'Quality Assurance'),
    (12, 'Supply Chain'),
    (13, 'Administration'),
    (14, 'Training and Development'),
    (15, 'Health and Safety'),
    (16, 'Facilities Management'),
    (17, 'Product Management'),
    (18, 'Engineering'),
    (19, 'Design'),
    (20, 'Event Management'),
    (21, 'Purchasing'),
    (22, 'International Business'),
    (23, 'Information Security');

	-- Creating Department table with self-referencing relationship

CREATE TABLE Company (
CompanyID INT ,
EmployeeID INT,
ManagerID INT,
CompanyName VARCHAR(250),
first_name VARCHAR(225),
last_name VARCHAR(225)
);

-- Inserting sample data into Company table
INSERT INTO Company 
VALUES
    (1, 101, NULL, 'Company A', 'John', 'Doe'),
    (2, 102, 101, 'Company B', 'Jane', 'Smith'),
    (3, 103, 101, 'Company C', 'Bob', 'Johnson'),
    (4, 104, 102, 'Company D', 'Alice', 'Williams'),
    (5, 105, 102, 'Company E', 'Charlie', 'Brown'),
    (6, 106, 103, 'Company F', 'Eva', 'Davis'),
    (7, 107, 103, 'Company G', 'Tom', 'Miller'),
    (8, 108, 104, 'Company H', 'Grace', 'Taylor'),
    (9, 109, 104, 'Company I', 'Sam', 'Anderson'),
    (10, 110, 105, 'Company J', 'Olivia', 'Moore'),
    (11, 111, 105, 'Company K', 'Ryan', 'Brown'),
    (12, 112, 106, 'Company L', 'Sophia', 'Clark'),
    (13, 113, NULL, 'Company M', 'Liam', 'Johnson'),
    (14, 114, 113, 'Company N', 'Emma', 'White'),
    (15, 115, 113, 'Company O', 'Mason', 'Hill'),
    (16, 116, 113, 'Company P', 'Ava', 'Walker'),
    (17, 117, 108, 'Company Q', 'Logan', 'Turner'),
    (18, 118, 108, 'Company R', 'Mia', 'Jones'),
    (19, 119, 108, 'Company S', 'Jackson', 'Harris'),
    (20, 120, 108, 'Company T', 'Sophie', 'Baker'),
    (21, 121, 109, 'Company U', 'Lucas', 'Wright'),
    (22, 122, 109, 'Company V', 'Chloe', 'Turner'),
    (23, 123, 109, 'Company W', 'Ethan', 'Mitchell');





	--Select query 

	select * from employees

	--select desired colums

	select firstname, lastname, birthdate, salary
	from employees

	--order by clause
	
	--sorting the results by using 'order by' clause

	select firstname, lastname, birthdate, salary
	from employees
	order by firstname, lastname;

	--'where' clause
	--choosing rows to display

	select firstname, lastname, birthdate, salary
	from employees
	where salary = 80000
	order by firstname, lastname;

	--Between operator
	--choosing range of values

	select firstname, lastname, birthdate, salary
	from employees
	where salary between 75000 and 85000
	order by firstname, lastname;
	
	--like operator
	-- %now => string ends with now
	-- now% => string begine with now
	-- %now% => string contain with now
	-- N_W => string which contain three letters, but start with N, and ends with W
	-- %N_W% => would match any string that contains the letter 'n', followed by any single character, followed by the letter 'W'. Here are some examples of strings that would match:
	-- example "nowork"

	select firstname, lastname, birthdate, salary
	from employees
	where firstname like 'joh%'
	order by firstname, lastname;

	--OR Operator
	--return one statement from multiple statements either one is correct.

	select firstname, lastname, birthdate, salary
	from employees
	where firstname like 'joh%' or
	salary between 78000 and 83000
	order by firstname, lastname;

	-- AND operator
	-- return multiple condition, every condition must be true.

	select firstname, lastname, birthdate, salary
	from employees
	where firstname like 'joh%' and
	salary between 75000 and 83000
	order by firstname, lastname;

	--subquery

-- example	
	 --(select employeid
	 --from employees
	 --where department like '%Market'

	select firstname, lastname, salary, department
	from employees
	where EmployeeID in 
	(select employeeID from employees
	where department like 'Market%')
	order by firstname, lastname;

	--example 2

	select employeeid, firstname, lastname, salary 
	from employees A
	where salary > 
	(select avg(salary) as average from employees B
	where A.employeeid=B.employeeID);

	-- find the second highest salary from employees table. using subquery

	select top 1 salary, employeeid, firstname, lastname, birthdate, department
	from employees
	where salary not in 
		(select top 1 salary
		from employees
		order by salary desc)
	order by salary desc;

--select top 1 salary from employees table.

	select top 1 salary, firstname
	from employees
	order by salary desc


-- select all from department table

select * from Department

--cartesian product
-- when we faild(forget) to include the join to the table, the cartesin product will occure. you can see 575 rows for 25 employees.
--(it will joining each employee with every deapartment (25*23=575).
select employeeid, lastname, firstname, departmentname
from employees, department

-- Inner join of two tables
-- rows were returned only when a matching department row was found for an employee. 

select employeeid, firstname, lastname, departmentname, salary
from employees, department
where employees.employeeid=department.departmentid;

--other way to write Inner join.
--standard syntax for all joins.

select employees.employeeid, employees.firstname, department.departmentname, employees.salary
from employees
inner join department
on employees.employeeid=department.departmentid;

-- outer right join 
-- retrve all the data, when there is no matching rows then write as 'NULL' in that place, however whole data will be retrived.

select employeeid, firstname, lastname, departmentname, salary
from department
right join employees
on employees.employeeid=department.departmentid;

-- outer left join 

select employeeid, firstname, lastname, departmentname, salary
from employees
right join department
on employees.employeeid=department.departmentid;

--limiting join results by using WHERE clause.

select employeeid, firstname, lastname, salary, department
from employees A, department B
where A.employeeid=B.departmentid
and department like '%Finance%';

--self join
-- In the context of a recursive relationship, the table typically has a foreign key column that references the primary key of the same table.
-- This foreign key column represents a relationship between rows in the same table.

select * from company

select e.employeeid, e.first_name, m.employeeid as manager_ID, m.first_name as manager_name
from company e
join company m
on e.managerid=m.employeeid;



--simple AGGREGATE functions (max, min, avg, count, sum)
select department, min(salary) as min_salary, max(salary) as max_salary, sum(salary) as sum_salry, round(avg(salary),2) as avg_salary, count(*) as count_total
from employees
group by department


--DML (DATA MANIPULATION language)

--update (we can update specific data by using where clause)
-- WHERE clause may included to limit the scope of the statement to rows matching its conditions,otherwise the statements tends to update every row in the table, which named in the statements.


update employees
set firstname ='Suraj', lastname='Singh', gender='M',  salary=26000
where employeeid=8;

select * from employees
select * from department


-- select employee details for specific employee.

select * from employees
where employeeid=15

select A.employeeid, A.Firstname, B.Departmentname
from employees A
left join department B
on A.employeeID=B.DepartmentID;

--constraints There are few types of constraints namly
--1) Primary KEy constraint 2) unique constraint 3) check constraint 4) Referential (foreign key) constraint

--Primary key constraints
--Primary key constraint wont allow the duplicate values, mostly primary key constraints used for indexing in the table.
--Cannot define PRIMARY KEY constraint on nullable column.

alter table employees
add constraint pk_employeeid primary key (employeeid)

--Unique constraints
--A table may have only one primary key constraint, but in addition it may have as many as unique constraints if nesessary 
--each column can be have Unique constraints.

alter table employees 
add constraint uq_employeeid unique (employeeid)

--to drop same constraints from table 

alter table employees
drop constraint uq_employeeid

--Check constraints
--Check constraints can be applied to a single column in a table. The CHECK constraint is used to limit the value range that can be placed in a column.
-- for example the below syntax eis for check the salary column in employees table, the minimum salary is 0, so this constaint won't allow the salary lower then zero (0).

alter table employees
add constraint employees_check_salary_min
check (salary>25000)

--drop check constraint 

alter table employees
drop constraint employees_check_salary_min

--Foreign key Constraint
--The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.
--A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
--The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.

alter table department
add constraint department_departmentid_fk
foreign key (departmentid)
references employees (employeeid)

--since there is no primary key for reference in employees table the above syntax wont work, but the syntax is correct.

--Drop statement:

drop table department
drop table employees

--Data Control Language (DCL) Statements: 
--a database privileges is the authorization to do something in the database. 
--the database user granting the privileges are called grantor, and the recevers are called gantee, those are two types
--1) system privileges: permit grantee to perform general functions such as creating new users , and conecting to database.
--2) object privileges: permit grantee to perform specific functions such as updating, and selecting.

--Example grantee synatax from HR to OE user on the Employees table.

grant select, insert, update on GaneshPendem.employees to OE;

--Revoke.
--Grantee privileges can be withdrawn using the REVOKE statement. 
--example syntax. to withdraw the previous grants.

Revoke select, insert, update on employees from OE;

