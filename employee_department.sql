create database tasks;
use tasks;
set sql_safe_updates = 0;
create table employee
    ( emp_id int,
      emp_name varchar(40),
      dept_no int ,
      salary varchar(15)
      );

select * from employee;

insert into employee
values (1,"deva",1,"30000"),
		(2,"Abi",2,"40000"),
        (3,"athu",3,"65000"),
        (4,"sandy",4,"50000"),
        (5,"sound",5,"48000"),
        (6,"viji",6,"58000");
	
select emp_name from employee;

select emp_name , salary from employee;
 
alter table employee
add commission int ;

UPDATE employee 
SET commission = 3000 WHERE emp_id = 1;
UPDATE employee 
SET commission = 4000 WHERE emp_id = 2;
UPDATE employee 
SET commission = 5000 WHERE emp_id = 3;
UPDATE employee 
SET commission = 3500 WHERE emp_id = 4;
UPDATE employee 
SET commission = 4500 WHERE emp_id = 5;
UPDATE employee 
SET commission = 5500 WHERE emp_id = 6;

select * from employee;

select emp_name,commission from employee;

select emp_id,dept_no from employee;

alter table employee
add hire_date date;

UPDATE employee 
SET hire_date = '2024-04-23' WHERE emp_id = 1;
UPDATE employee 
SET hire_date = '2023-08-6' WHERE emp_id = 2;
UPDATE employee 
SET hire_date = '2021-01-13' WHERE emp_id = 3;
UPDATE employee 
SET hire_date = '2017-03-20' WHERE emp_id = 4;
UPDATE employee 
SET hire_date= '2019-11-5' WHERE emp_id = 5;
UPDATE employee 
SET hire_date = '2026-12-18' WHERE emp_id = 6;

select emp_name , hire_date from employee;

alter table employee
add designation varchar(40);

UPDATE employee 
SET designation = "manager" WHERE emp_id = 1;
UPDATE employee 
SET designation = "developer" WHERE emp_id = 2;
UPDATE employee 
SET designation = "tester" WHERE emp_id = 3;
UPDATE employee 
SET designation = "HR" WHERE emp_id = 4;
UPDATE employee 
SET designation = "accountant" WHERE emp_id = 5;
UPDATE employee 
SET designation = "developer" WHERE emp_id = 6;

select emp_name , designation from employee;

select emp_name as name, designation as job, salary from employee;

select * from employee;

create table Department
      ( dept_names varchar(50),
        location varchar(50)
        );

insert into department
values ("IT" , "chennai"),
       ("HR" , "bangalore"),
       ("finance" , "mumbai"),
       ("Marketing" , "hyderabad"),
       ("sales" , "coimbatore"),
       ("development" , "pune");
       
select dept_names from department;

select dept_names , locationstudent_details from department;
select * from department;