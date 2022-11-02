create table zeerentals(
rental_id VARCHAR (10),
cust_id varchar(10),
laptop_id VARCHAR(10),
pick_date DATE,
return_date DATE,
amount BIGINT,
PRIMARY KEY (rental_id));

select * from zeerentals;

insert into zeerentals values(1101,001,456712,'2020-05-10','2020-08-12',1200);
insert into zeerentals values(1102,002,456734,'2020-05-11','2020-09-12',9500);
insert into zeerentals values(1103,003,456700,'2020-01-10','2020-08-25',5000);
insert into zeerentals values(1104,004,456774,'2020-05-20','2020-10-12',10000);
 
 use insurance_company;
 select rental_id as id from zeerentals;
 select rental_id,cust_id,laptop_id,amount, RPAD(amount, 10, "*") as modified_amount from zeerentals where amount>7000 order by rental_id;
 select * from zeerentals;
 insert into zeerentals values(0102,005,525852,'2020-05-28','2021-06-12',12000);
 select* from zeerentals;
 select rental_id,cust_id,laptop_id,amount, RPAD(amount, 10, "*") as modified_amount from zeerentals where amount>7000 and pick_date between '2020-05-01 00:00:00' and '2020-05-31 11:59:00'order by rental_id;
select * from zeerentals;