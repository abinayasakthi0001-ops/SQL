use tasks;

create table students
   ( stu_id int primary key auto_increment,
     stu_name varchar(40),
     city varchar(40),
     marks int,
     course_fees int );
     
insert into students(stu_name,city,marks,course_fees)
values ("vijay","chennai",97,27000),
	   ("surya","coimbatore",87,47000),
       ("abdul","Salem",83,30000),
        ("sam","kannur",77,40000);

select upper(stu_name) as name from students;

select lower(stu_name) as name from students;

select length(stu_name) as length from students;

select left(stu_name,3) as first_3chars from students;

select replace (city,'kannur','salem')as city from students;

-----------------------------------------------------------------

select count(stu_name) as count from students;

select avg(marks) as average from students;

select max(marks) as max_marks from students;

select min(course_fees) as min_crsefee from students;

select sum(course_fees) as sum_crsefees from students;

select * from students;
     
