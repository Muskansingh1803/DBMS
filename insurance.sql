create database insurance
use insurance
show tables
SET SQL_SAFE_UPDATES = 0;
create table PERSON(Driver_id varchar(25) primary key,Name char(25),Address varchar(50))
delete from PERSON
insert into PERSON values('D01829','Muskan Singh','Delhi')
insert into PERSON values('D01827','Aditya Malik','Chandigarh')
insert into PERSON values('D01838','Himesh Maandi','Jaipur')
insert into PERSON values('D01891','Khayati Luthra','Gujarat')
insert into PERSON values('D01817','Abhay Sharma','Sri Lanka')
desc PERSON
select * from PERSON
create table CAR(Regno varchar(50),Model varchar(25),Year int)
delete from CAR
insert into CAR values('R01821','Lamborghini Sian Roadster',2000)
insert into CAR values('R01822','Bugatti Chiron Super Sport 300+',2003)
insert into CAR values('R01823','Ferrari LaFerrari',2013)
insert into CAR values('R01824','Pagani Huayra',1975)
insert into CAR values('R01825','Koenigsegg One:1',2021)
desc CAR
alter table CAR modify Model varchar(50)
select * from CAR
create table ACCIDENT(Report_number int,Acc_date date,Location varchar(25))
delete from ACCIDENT
insert into ACCIDENT values('RE02001','2003-02-18','Delhi')
insert into ACCIDENT values('RE02002','2013-02-11','Lucknow')
insert into ACCIDENT values('RE02003','2005-07-06','Jaipur')
insert into ACCIDENT values('RE02004','26-01-2020','China')
insert into ACCIDENT values('RE02005','01-07-2021','Euganda')
desc ACCIDENT
select * from ACCIDENT
alter table ACCIDENT modify column Report_number varchar(15)
create table OWNS(Driver_id varchar(25) primary key,Regno varchar(50))
delete from OWNS
insert into OWNS values('D01829','R01821')
insert into OWNS values('D01827','R01822')
insert into OWNS values('D01838','R01823')
insert into OWNS values('D01891','R01824')
insert into OWNS values('D01817','R01825')
desc OWNS
select * from OWNS
create table PARTICIPATED(Driver_id varchar(25) primary key,Regno varchar(50),Report_number int,Damage_amount float(10,2))
delete from PARTICIPATED
insert into PARTICIPATED values('D01829','R01821','RE02001','99999.99')
insert into PARTICIPATED values('D01827','R01822','RE02002',)
insert into PARTICIPATED values('D01838','R01823','RE02003',)
insert into PARTICIPATED values('D01891','R01824','RE02004',)
insert into PARTICIPATED values('D01817','R01825','RE02005',)
desc PARTICIPATED
select * from PARTICIPATED
alter table PARTICIPATED modify column Report_number varchar(15)
select * from PERSON left outer join OWNS on PERSON.driver_id=OWNS.driver_id
select PERSON.Name,OWNS.Regno from PERSON right outer join OWNS on PERSON.Driver_id=OWNS.Driver_id
select * from PERSON cross join OWNS
create view oswald as select Driver_id from PERSON union select Regno from OWNS
select * from oswald