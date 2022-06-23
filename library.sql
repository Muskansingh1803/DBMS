create database library
use library
show tables
SET SQL_SAFE_UPDATES = 0
create table Student(Stud_no varchar(50),Stud_name int)
alter table Student modify Stud_no int
alter table Student modify Stud_name varchar(50)
create table Membership(Mem_no int,Stud_no varchar(50))
alter table Membership modify Stud_no int
create table Book_(Book_no int,Book_name varchar(50),Author varchar(50))
create table Iss_rec_(Iss_no int,Iss_date date,Mem_no int,Book_no int)
insert into Student values(1001,'Muskan Singh')
insert into Student values(1002,'Himesh Maandi')
insert into Student values(1003,'Khayati Luthra')
insert into Student values(1004,'Sarthak Jain')
insert into Student values(1005,'Paesha Mittal')
insert into Student values(1006,'Hemant Kumar')
insert into Student values(1007,'Piyush Saklani')
insert into Student values(1008,'Pranshu Teotia')
insert into Student values(1009,'Aditya Malik')
insert into Student values(1010,'Abhay Sharma')
select * from Student
insert into Membership values(50001,1001)
insert into Membership values(50002,1002)
insert into Membership values(50003,1003)
insert into Membership values(50004,1004)
insert into Membership values(50005,1005)
insert into Membership values(50006,1006)
insert into Membership values(50007,1007)
insert into Membership values(50008,1008)
insert into Membership values(50009,1009)
insert into Membership values(50010,1010)
select * from Membership
delete from Book_
insert into Book_ values(587,'Database Management System','Navathe')
insert into Book_ values(684,'Fundamentals of Database Systems','Elamarsi')
insert into Book_ values(157,'Operating System: A Spiral Approach','Elamarsi')
insert into Book_ values(573,'Conceptual Database Design','Navathe')
insert into Book_ values(927,'The Joy of PHP Programming','Alan Forbes')
insert into Book_ values(681,'Applied Mathematics','M.D.Bhagat,Dr.P.G.Dixit')
insert into Book_ values(456,'Database Management System','Navathe')
insert into Book_ values(156,'Data Structures','Seymour Lipshutz')
insert into Book_ values(552,'Environment And Disaster Management','Dr.Khul')
insert into Book_ values(810,'Web Hacking','Peter Yaworski')
select * from BOOK_
insert into Iss_rec_ values(4851,'2022-02-18',10001,587)
insert into Iss_rec_ values(4852,'2022-06-24',10002,157)
insert into Iss_rec_ values(4853,'2022-03-13',10003,681)
insert into Iss_rec_ values(4854,'2022-01-18',10004,810)
insert into Iss_rec_ values(4855,'2022-05-12',10005,684)
insert into Iss_rec_ values(4856,'2022-04-07',10006,587)
insert into Iss_rec_ values(4857,'2022-06-15',10007,456)
insert into Iss_rec_ values(4858,'2022-02-28',10008,552)
insert into Iss_rec_ values(4859,'2022-04-29',10009,810)
insert into Iss_rec_ values(4860,'2022-05-30',10010,156)
select * from Iss_rec_
select Membership.Mem_no, Student.Stud_name from Membership,Student where Membership.Stud_no=Student.Stud_no
select * from Student where Stud_no in(select Stud_no from Membership where Mem_no in (select Mem_no from Iss_rec_ where Book_no in(select Book_no from Book_ where Author='Elmarsi & Navathe')))
select s.Stud_no,count(i.Book_no) from Student s, Membership m, Book_ b, Iss_rec_ i where s.Stud_no=m.Stud_no and b.Book_no=i.Book_no group by s.Stud_no
select Book_name from Book_ where Book_no in (select Book_no from Iss_rec_ where Mem_no in(select Mem_no from Membership where Stud_no in(select Stud_no from Student where Stud_no=1005)))
delete from Book_ where Book_no in (select Book_no from Iss_rec_ where Iss_date=curdate())
create view shinchan as select i.Iss_no, i.Iss_date, s.Stud_name, b.Book_name from Iss_rec_ i, Student s, Book_ b, Membership m where s.Stud_no=m.Stud_no and b.Book_no=i.Book_no and m.Mem_no=i.Mem_no
select * from shinchan
desc shinchan