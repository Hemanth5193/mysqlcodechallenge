use practicedb;
create table dept(
dept_id int(11) primary key,
dept_name varchar(25)
);

create table staff(
staff_id int(11) primary key,
staff_name varchar(20),
supervisor_id int(11),
salary bigint(20),
join_date date,
dept_id int(11),
foreign key (dept_id) references dept(dept_id)
);
insert into dept values(7,'hhhhh');
insert into dept values(8,'jjjjj');
insert into dept values(10,'kkkkk');

insert into staff values(1001,'aaaa',1111,20000,'2000-10-01',10);
insert into staff values(1002,'bbbb',2222,20000,'2000-10-01',10);
insert into staff values(1003,'cccc',3333,20000,'2000-10-04',10);
insert into staff values(1004,'dddd',3333,20000,'2000-10-05',8);
insert into staff values(1005,'eeee',4444,20000,'2000-10-05',7);



select* from staff;
select* from dept;

select staff_id,staff_name,salary,dept_id from staff 
where dept_id=10 and salary>(select avg(salary) from staff) order by staff_id asc;