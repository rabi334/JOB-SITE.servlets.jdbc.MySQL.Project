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
DELETE FROM company WHERE company_id=1;

select * from company;

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
select * from employees;
CREATE TABLE JOB(
company_id int,
job_id int primary key,
job_position varchar(200),
job_available int,
salary int,
foreign key (company_id) references company(company_id),
application_deadline date
);