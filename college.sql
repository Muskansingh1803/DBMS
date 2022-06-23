show databases
use college
show tables
update student set Sname='Muskan S.' where USN=101
SET SQL_SAFE_UPDATES = 0
update student set Address='H.NO.-12 Delhi' where USN=105
delete from student where USN=110
delete from student
select * from semsec
select * from class
select * from iamarks
delete from student
delete from iamarks
show tables
insert into student values(101,'Muskan Singh','H.NO.-30 Chandigarh',962548799,'F')
insert into student values(102,'Himesh Maandi','H.NO.-75 Kashmir',813066480,'M')
insert into student values(103,'Khayti Luthra','H.NO.-40 China',817829314,'F')
insert into student values(104,'Sarthak Jain','H.NO.-105 Rajasthan',987100890,'M')
insert into student values(105,'Paesha Mittal','H.NO.-12 Goa',986837312,'F')
insert into student values(106,'Aditya Malik','H.NO.-56 Shimla',827382937,'M')
insert into student values(107,'Nisha Singh','H.NO.-220 Haryana',991196696,'F')
insert into student values(108,'Abhay Sharma','H.NO.-60 Uttrakhand',826289292,'M')
insert into student values(109,'Akhil Sharma','H.NO.-560 Gujarat',828483483,'M')
insert into student values(110,'Shriya Kapoor','H.NO.-30 Himachal Pradesh',896152551,'F')
desc iamarks
alter table iamarks modify column SSID varchar(10)
insert into iamarks values(101,103,'S01',90,96,99,285)
insert into iamarks values(102,103,'S02',86,95,99,280)
insert into iamarks values(103,103,'S03',90,92,88,270)
insert into iamarks values(104,103,'S04',93,83,75,251)
insert into iamarks values(105,103,'S05',90,81,73,244)
insert into iamarks values(106,103,'S06',90,99,75,264)
insert into iamarks values(107,103,'S07',87,65,78,230)
insert into iamarks values(108,103,'S08',88,89,95,272)
insert into iamarks values(109,103,'S09',92,76,84,252)
insert into iamarks values(110,103,'S10',83,76,91,250)
select * from iamarks where Test1=87 OR Test2=65
select substring(USN,1,5)as ExtractString from iamarks
select * from iamarks order by FinalIA
select * from iamarks order by FinalIA desc
select * from iamarks order by FinalIA,Subcode
alter table student add primary key(USN)
desc student
alter table iamarks add unique(SSID)
alter table student modify phone int not null
alter table iamarks add check (Test1>=90)
alter table class add primary key(USN)
alter table student add foreign key (USN) references class(USN)
select count(USN) from student
select avg(FinalIa) from iamarks
select sum(Test1) from iamarks
select min(Test2) as smallestTest2 from iamarks
select max(FinalIA) as largestTest2 from iamarks
create view shinchan as select Sname,Address from student where Sname='Abhay Sharma'
select * from shinchan
select Sname as Student_name from student
select * from iamarks where FinalIA=(select count(Test2)*27 from iamarks)
select * from student inner join iamarks on student.USN=iamarks.USN