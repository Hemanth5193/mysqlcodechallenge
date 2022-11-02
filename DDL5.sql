use practicedb;
create table t_hall_details(
hall_id varchar(10),
hall_name varchar(25),
city varchar(20),
hall_type varchar(10),
capacity int(10),
cost_perday int(10),
primary key(hall_id));

create table t_coustomer_details(
coustomer_id varchar(10),
coustomer_name varchar(20),
mobile_no int(10),
coustomer_city varchar(20),
primary key(coustomer_id));

create table t_hall_booking(
hall_id varchar(10),
coustomer_id varchar(10),
event_name varchar(20),
event_date date,
foreign key (hall_id)references t_hall_details(hall_id),
foreign key (coustomer_id)references t_coustomer_details(coustomer_id));
desc t_hall_booking;
desc t_coustomer_details;
desc t_hall_details;