use tasks ;
set sql_safe_updates=0;
create table course
      ( course_id int,
        course_name varchar(50),
        duration varchar(40),
        fee int);
drop table course;

insert into course 
value (10 ,"computer science","6 months",45000),
	  (20,"IT","5 months",85000),
      (10 ,"genetics","6 months",45000),
      (30 ,"biotech","7 months",85000),
      (40 ,"accounts","3 months",35000),
      (40 ,"data analytics","3 months",35000);
      

select * from course;

create table student
     ( stu_id int primary key,
	   stu_name varchar(50),
       age int,
       city varchar(50),
       course_id int,
       marks int);
       
insert into student
values (1,"Abi",21,"Coimbatore",10,91),
	   (2,"Arthu",22,"kannur",20,95),
	   (3,"Affi",26,"chennai",10,75),
       (4,"sandy",24,"pollachi",30,85),
       (5,"smith",26,"erode",30,79),
       (6,"Sound",20,"hosur",40,83),
	   (7,"viji",21,"velore",40,60);
       
select * from student;

select * from course;

alter table course
add constraint unique (course_name);

alter table student
modify stu_name varchar(50) not null;

update student
set marks = "78" where stu_id = 4;

alter table student
add constraint marks check(marks between 0 and 100);

insert into student (stu_id,stu_name,age,course_id,marks)
values (8,"siva",25,20,73);

alter table student
alter column city set default 'chennai';

drop table course;

create table course
      ( course_id int primary key,
        course_name varchar(50),
        duration varchar(40),
        fee int,
        student_id int ,
        foreign key(student_id) references student(stu_id)
        );
	
insert into course 
value (10 ,"computer science","6 months",45000,1),
	  (20,"IT","5 months",85000,2),
      (30 ,"genetics","6 months",45000,3),
      (40 ,"biotech","7 months",85000,4),
      (50 ,"accounts","3 months",35000,5),
      (60 ,"data analytics","3 months",35000,6);

update course
set course_id="40"
where course_id=20;

alter table course
modify course_name varchar(50) null;

update student
set marks="120"
where stu_id=3;

insert into course
values (20,"IT","5 months",85000,2);

delete from course 
where course_id = 2;

select * from course;

select * from student;








