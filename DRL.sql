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