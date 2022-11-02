use practicedb;
delimiter go
create table pet_owner(
					Owner_Id INT NOT NULL,
					Name CHAR(50),
					Surname CHAR(50),
					Street_Address CHAR(100) ,
					City CHAR (100) ,
					State CHAR(10) DEFAULT 'Michigan',
                    Zip_Code int,
					PRIMARY KEY(Owner_Id))go
delimiter go
CREATE TABLE pet(
			 Pet_Id CHAR(10) NOT NULL ,
			 Name CHAR(20) NOT NULL,
             Kind CHAR(10),
             Gender CHAR(6),
             Age int,
             Owner_Id int,
             PRIMARY KEY(Pet_Id),
             foreign key (Owner_Id) REFERENCES pet_owner(Owner_Id))go
delimiter go
CREATE TABLE procedure_history(
			Pet_Id CHAR(10),
            Procedure_date date,
            Procedure_type CHAR(50),
            Description CHAR(100),
            foreign key (Pet_Id) REFERENCES pet(Pet_Id))go
insert into pet_owner values (1070,'jessica','AA','3861 WBL','SF','Michigan',48034);
insert into pet_owner values (2419,'luisa','BB','1308 SR','K','Michigan',49007);
insert into pet_owner values (2863,'john','CC','3221 PS','D','Michigan',48423);
insert into pet_owner values (3518,'connie','DD','1539 CC','BT','Michigan',48302);
insert into pet_owner values (3663,'lena','EE','4217 TOD','TC','Michigan',48684);
insert into pet_owner values (5289,'patrick','FF','2222 DD','SF','Michigan',48034);
insert into pet_owner values (6049,'debbi','GG','315 GA','GR','Michigan',49503);
insert into pet_owner values (7663,'julia','HH','1324 BS','L','Michigan',48933);
insert into pet_owner values (7896,'meredith','II','GA','D','Michigan',49007);
insert into pet values (8562,'blackie','dog','male',11,7896);
insert into pet values (2904,'simba','cat','male',1,3518);
insert into pet values (7342,'cuddles','dog','male',13,3663);
insert into pet values (2001,'roomba','cat','male',9,2863);
insert into pet values (7551,'keller','parrot','female',2,6049);
insert into pet values (8765,'vuitton','parrot','female',11,1070);
insert into pet values (4045,'simba','cat','male',0,5289);
insert into pet values (5652,'priya','cat','female',7,7663);
insert into procedure_history values (8562,'2016-12-01','vaccination','galaxie(dhlpp)');
insert into procedure_history values (4045,'2016-01-18','genral surgeries','declaw');
insert into procedure_history values (2001,'2016-12-14','hospitalization','all hospitalization');
insert into procedure_history values (2904,'2016-01-17','genral surgeries','salivary cyst ex');
insert into procedure_history values (7551,'2016-12-12','vaccination','PCR');
insert into procedure_history values (7342,'2016-01-12','genral surgeries','ear crop');
desc procedure_history;
select* from pet;
select * from pet_owner;
select * from procedure_history;

select p.Pet_Id,p.Name,o.Owner_Id,o.Name,d.Description FROM (pet p JOIN pet_owner o on p.Owner_Id=o.Owner_Id) join procedure_history d on p.Pet_Id=d.Pet_Id where Procedure_type='genral surgeries';
usp_PetProcedureDetails
call usp_PetProcedureDetails; 