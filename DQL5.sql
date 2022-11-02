use practicedb;
create table examinationmarks(
Record_id varchar(20) PRIMARY KEY,
stud_id varchar(20),
stud_name varchar(40),
stud_standard varchar(30),
stud_section varchar(20),
FirstLanguage int(20),
SecondLanguage_Marks150 int(20),
ThirdLanguage_Marks100 int(20),
GeneralScience100 int(20),
Mathematics100 int(20),
SocialScience100 int(20),
Student_Avg_Marks int(20),
Remarks varchar(20)
);

insert into examinationmarks values('20','1101','rachel','8','A',90,75,80,90,70,83,70,'good');
insert into examinationmarks values('10','1102','jimmy','10','B',70,55,50,70,70,71,86,'can improve');
insert into examinationmarks values('15','1103','ajay','9','A',95,90,85,93,89,88,91,'very good');

select stud_name, stud_standard, Student_Avg_Marks, GeneralScience100, Mathematics100, GeneralScience100+Mathematics100 as ScienceMathsTotal 
from examinationmarks
where Student_Avg_Marks >=75 and GeneralScience100 >= 75 and Mathematics100 >=75;