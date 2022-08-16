create database if not exists ironhack;
use ironhack;

create table if not exists students (
id int,
name char (30),
email char (30),
phone char (10),
adress char (50),
gender char (1),
picture char (3),
background char (30),
country char (30),
date_of_birth date,
course_id int);

create table if not exists courses (
id int,
name char (30),
pt_ft char (30),
remote char (10),
start_date date,
duration int,
location char (10));

insert into courses (id,name,pt_ft,remote,start_date,duration,location)
values(1,"data analytics","ft","no","2022-07-25",9,"paris"),
(2,"data analytics","ft","no","2022-09-20",9,"paris"),
(3,"data analytics","pt","no","2022-01-05",23,"paris"),
(4,"data analytics","ft","no","2022-11-23",11,"paris");

insert into students (id,name,email,phone,adress,gender,picture,background,country,date_of_birth,course_id)
values(1,"clement","clement@gmail.com","0640804080","avenue chatelet","1",1,"finance de marché","spain","1966-01-25",3),
(2,"sara","sara@gmail.com","060606060","avenue rockefellers","2",1,"sales representant","brazil","1989-01-25",3),
(3,"yelena","yelena@gmail.com","0650505050","rue des boulets","2",1,"analyste financier","serbie","1988-02-03",4),
(4,"stephan","stephan@gmail.com","0690909090","rue des escoffiers","1",1,"manager","france","1975-05-10",1),
(5,"marie","marie@gmail.com","0606060606","résidence la victoire","2",1,"account manager","france","1987-06-13",3),
(6,"bra","bra@gmail.com","060606060","rue du prince","1",1,"teacher","france","1977-09-10",1),
(7,"kalina","kalina@gmail.com","0670707070","avenue de la nation","2",1,"assistant","france","1977-09-10",1);


/*question*/
create database if not exists Company;
use Company;

create table if not exists Employees(
Emp_ID int,
Name char(30),
Surname char(30),
Department char(10),
Salary float);

INSERT INTO Employees(Emp_ID, Name, Surname, Department, Salary)
values(5677, "Elise", "Dubois", "Sales", 4000),
(6745, "Martin", "Blanchard", "Marketing", 5600),
(78999, "Marie", "Dupuis", "Sales", 4500),
(46599, "Ethan", "Hunt", "HR", 5000),
(67889, "Benjamin", "Franklin", "Acounting", 7000),
(76999, "Britney", "Spears", "Acounting", 6400),
(35666, "Robin", "Fenty", "HR", 6000);

select distinct department from Employees;

ALTER TABLE Employees
ADD taxes int;

SELECT concat(name,' ',surname),salary*0.2 FROM EMPLOYEES;

SELECT max(salary) from employees;
SELECT min(salary) from employees;

SELECT avg(salary) from employees;