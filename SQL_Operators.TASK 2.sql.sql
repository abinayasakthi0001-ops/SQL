create database tasks;
use tasks;

create table student
     ( stu_id int,
	   stu_name varchar(50),
       age int,
       city varchar(50),
       course_id int,
       marks int);
       
select * from student;

insert into student
values (1,"Abi",21,"Coimbatore",10,91),
	   (2,"Arthu",22,"kannur",20,95),
	   (3,"Affi",26,"chennai",10,75),
       (4,"sandy",24,"pollachi",30,85),
       (5,"smith",26,"erode",30,79),
       (6,"Sound",20,"hosur",40,83),
	   (7,"viji",21,"velore",40,60);
       
select stu_name , marks from student where marks > 80; 

select * from student where age >= 18 and age <= 22;

select * from student where city = 'chennai' or city = 'coimbatore';

select * from student where marks != 50;

select * from student where stu_name like 'A%';

select * from student where stu_name like '%n';

select * from student where stu_name like '%ar%';

select * from student where city not in ('madurai','salem');

select * from student where marks in ('60','70','80','90');

select * from student where marks between 70 and 90 and city = 'chennai';




 