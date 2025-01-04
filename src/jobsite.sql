create database jobsite;
use jobsite;
drop table company;
create table company(
    company_id int primary key auto_increment,
    company_name varchar(200),
    company_address varchar(150),
    company_phoneno varchar(300),
    company_email varchar(250),
    company_password varchar(150),
    company_managername varchar(150)
);
DELETE FROM company
WHERE company_id = 1;
select *
from company;
drop table employees;
create table employees(
    emp_id int primary key auto_increment,
    emp_name varchar(200),
    emp_sex varchar(10),
    emp_dateofbirth date,
    emp_address varchar(200),
    emp_phoneno varchar(50),
    emp_edulevel varchar(150),
    emp_profession varchar(200),
    emp_experiance int,
    emp_language varchar(100),
    emp_email varchar(250),
    emp_password varchar(50)
);
select *
from employees;
CREATE TABLE JOB(
company_id int,
job_id int primary key,
job_position varchar(200),
job_available int,
salary int,
foreign key (company_id) references company(company_id),
application_deadline date
);

insert into company(company_id,comapny_name,company_adress,company_phoneno,company_email,company_password,company_managername)values
(1,'Abyssinia Software'	,'Addis Ababa',+251911000111,'info@abyssiniasoftware.et','P@ssw0rd123','Abebe Kebede'),
(2,'Nile Enterprises','	Hawassa	',+251911000222,'contact@nileenterprises.et	','Nile@2023','Almaz Bekele'),
(4,'Blue Nile Construction','Bahir Dar',+251911000444,'info@bluenileconstruct.et','Build@Strong1','Genet Hailemariam'),
(5,'Sheba Airlines','Addis Ababa',+251911000555,'admin@shebaairlines.et','FlyHigh2024','Dereje Tadesse'),
(6,'Addis AgroTech','Adama',+251911000666,'hello@addisagrotech.et','Green@Growth1','Hana Mulugeta'),
(7,'Oromo Textile Works','Jimma',+251911000777,'support@oromotextile.et','Fabric@2023','Solomon Alemu')

insert into employees(emp_id,emp_name,emp_edulevel,emp_email,emp_password,emp_phonenumber,emp_sex,
emp_dateofbirth,emp_adress,emp_profession,emp_expriance,emp_language,emp_smlink)values
(1,'Biruk Alemneh','Bachelor Degree','biruk.alemu@gmail.com','password123','+251934567890','Male','1990-05-15','Franco','Software Engineer',5,'Amharic','linkedin.com/in/birukalemu'),
(2,'Fatuma Kasim','Master Degree','fatu.kasim@gmail.com','password456','+251965432101','Female','1985-11-20','Posta','Data Scientist',8,'English','linkedin.com/in/fatukasim'),
(3,'Yonas Terefe','High School Diploma','yonastef@gmail.com','password789','+251951234567','Male','1995-03-10','Bole','Technician',2,'Amharic','linkedin.com/in/yonasterefe'),
(4,'Sara Mekonin','Bachelor Degree','saramekon@example.com','password000','+251912223333','Female','1980-07-25','Gendehara','Research Scientist',12,'Oromic','linkedin.com/in/saramekonin'),
(5,'Michael Belete','Bachelor Degree','michaelbelete@gmail.com','password111','+251923334444','Male','1992-09-01','Mebrat','Project Manager',7,'English','linkedin.com/in/michaelbelete'),
(6,'Eldana Werku','Bachelor Degree','efiwerku@gmail.com','password222','+251934445555','Female','1998-02-18','Pikok','Marketing Specialist',3,'English','linkedin.com/in/efiwerku'),
(7,'Robel Girma','Master Degree','robelgirma@gmail.com','password333','+251945556666','Male','1978-06-05','College','Financial Analyst',15,'Amharic','linkedin.com/in/robelgirma')
  
insert into JOB(job_id,job_position,job_available,salary,application_deadline)values
(111,'Software Engineer',11,65000,2024-12-23),
(222,'Data Analyst',10,75000,2024-12-20),
(333,'Project Manager',7,80000,2024-12-26),
(444,'Marketing specialist',9,40000,2024-12-27),
(555,'Financial Analyest',5,50000,2024-12-22)
