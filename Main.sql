Blood_Bank
create table blood_bank(
state varchar(10), city varchar(10),
blood_bank_id varchar(10) primary key
);
Donor
create table donor (
varchar(20),
donor_name donor_id varchar(10) primary key,
blood_group
gender varchar(10),
varchar(10),
date_of_birth date,
donation_date_time timestamp,
city varchar(10),
phone_number varchar(10),
blood_bank_id
varchar(10),
foreign key(blood_bank_id) references blood_bank(blood_bank_id)
);
Blood
create table blood (
blood_group varchar(10),
quantity_mL integer, donor_id varchar(10),
primary key(donor_id,blood_group,quantity_mL),
foreign key(donor_id) references donor(donor_id)
);
Employee
create table Employee (
Employee_id int primary key,
E_mail varchar(30),
Phone_no number,
Employee_Name varchar(30),
Salary int,
Joining_date date,
blood_bank_id varchar(10),
foreign key (blood_bank_id) references blood_bank(blood_bank_id)
);
Employee_Phone
create table Employee_Phone
(
Phone_No varchar(11), employee_id int,
primary key(Phone_no,Employee_id),
foreign key(employee_id) references Employee(employee_id)
);
Hospital
create table hospital
(
hospital_id int primary key,
hospital_name varchar(30), street varchar(20),
city varchar(40));
);
Patient
create table Patient
(
patient_id int primary key,
Patient_Name varchar(30),
Date_of_birth date,
blood_group varchar(5),
Gender varchar(5),
house_no int,
Street varchar(30), city varchar (30), State varchar(30),
quantity int,
date_of_receiving date,
blood_bank_id varchar(10),
admission_time timestamp,
discharge_time timestamp,
hospital_id int, foreign key (blood_bank_id) references
Blood_bank(blood_bank_id),
foreign key(hospital_id) references hospital(hospital_id)
);
Volunteer
create table Volunteer_Phone_no
(
Phone_no_1 varchar(11),
Phone_no_2 varchar(11),
Volunteer_id int,
primary key(Volunteer_id,Phone_no_1),
foreign key (Volunteer_id) references Volunteer(Volunteer_id)
);
Volunteer_Phone
create table Volunteer_Phone_no(
Phone_no_1 varchar(11),
Phone_no_2 varchar(11),
Volunteer_id int,
primary key(Volunteer_id,Phone_no_1),
foreign key (Volunteer_id) references Volunteer(Volunteer_id));
Medical_Equipment
create table Remarks varchar(10),
Date_of_purchase Maintainance_due equipment(
date,
varchar(10),
equipment_id varchar(4) primary key,
blood_bank_id varchar(10),
eqpmnt_name varchar(40),
price integer,
foreign key(blood_bank_id) references blood_bank(blood_bank_id));
Inserting Values
Inserting Into blood_bank
insert into blood_bank values('AndhraPradesh','Vishakapatnam','v1'); insert into blood_bank values('AndhraPradesh','Guntur','G1'); insert into blood_bank values('AndhraPradesh','Warangal','w1'); insert into blood_bank values('AndhraPradesh','Rajamudhry','r1'); insert into blood_bank values('AndhraPradesh','Khammam','kh1'); insert into blood_bank values('AndhraPradesh','Secunderabad','s1');
Inserting Into Medical_Equipment
insert into Medical_equipment values('working','2002 0823','600','eq1','v1','Hematology Analyzer','137648'); insert into Medical_equipment values('working','1999 0824','2000','eq2','G1','Centrifuge machine','74738');
insert into Medical_equipment values('working','2000-08-25','211','eq3','r1','Rh view box','37479'); insert into Medical_equipment values('working','2007 1023','255','eq4','kh1','Storage Refrigerator','74844');
insert into Medical_equipment values('working','2012-11-23','456','eq5','s1','Plasma Expressor','87654');
insert into Medical_equipment values('working','2013 0723','655','eq6','w1','Storage Refrigerator','7648');
Inserting Into Donor
insert into donor values('Allu','d101','M','B+','2000-11-12','2021-03 10
00:02:23','Vishakapatnam','534567891','v1');
insert into donor values('sahithi','d102','F','B-','2000-10-12','2021-03-10
00:03:23','Warangal','544567891','v1');
insert into donor values('john','d103','M','AB-','2000-09-12','2021-02-10
00:04:12','Ongole','235567891','G1');
insert into donor values('Pavan','d104','M','A+','2001-11-22','2021-02-10
11:01:23','Madras','234567591','kh1');
insert into donor values('syam','d105','F','O-','2000-01-12','2021-01-10 00:05:23','Pali','124567891','w1');
insert into donor values('latha','d106','F','AB+','2002-11-12','2021-04-10
05:01:23','Thalli','345567891','s1');
insert into donor values('Somal','d107','M','A+','2005-11-14','2021-1-10
15:01:23','Kolkata','569567891','r1');
insert into donor values('Bittu','d108','M','B+','2000-10-12','2021-02-10
12:01:23','Khammam','784567891','s1');
insert into donor values('Bhaskar','d109','F','O+','2012-11-12','2021-03-10
23:01:23','Vizag','268367891','w1');
Inserting Into Blood
insert into blood values('B+',100,'d101'); insert into blood values('B-',200,'d102'); insert into blood values('AB-',300,'d103'); insert into blood values('A+',100,'d104'); insert into blood values('O-',200,'d105'); insert into blood values('AB+',300,'d106'); insert into blood values('A+',100,'d107'); insert into blood values('B+',200,'d108'); insert into blood values('O+',300,'d109');
Inserting Into Employee
insert into Employee values(2001,'rahul@gmail.com','Rahul',50000,'2000-08- 23','v1');
insert into Employee values(2002,'ramesh@gmail.com','Ramesh',40000,'2000-07- 23','r1');
insert into Employee values(2003,'Sultan@gmail.com','Sultan',48000,'2000-08- 13','G1');
insert into Employee values(2004,'Mani@gmail.com','Mani',79000,'2001-08- 23','kh1');
insert into Employee values(2005,'Mayank@gmail.com','Mayank',56000,'2020-08- 23','w1');
insert into Employee values(2006,'Harshit@gmail.com','Harshit',44000,'2000-08- 17','w1');
insert into Employee values(2007,'Ravi@gmail.com','Ravi',23000,'2002-08-23','v1'); insert into Employee values(2008,'Vanshi@gmail.com','Vanshika',100000,'2000-05- 10','r1');
Inserting Into Employee_Phone
insert into Employee_Phone values('9375938',2001); insert into Employee_Phone values('9587497',2002); insert into Employee_Phone values('9938788',2003); insert into Employee_Phone values('9656644',2004); insert into Employee_Phone values('9423955',2005); insert into Employee_Phone values('9987732',2006); insert into Employee_Phone values('9123224',2007); insert into Employee_Phone values('9098087',2008); insert into Employee_Phone values('9324423',2005);
Inserting Into Hospital
insert into Hospital values(101,'Lifeline','Ramnagar','Vishakapatnam'); insert into Hospital values(102,'SaveIn','APJColony','Secundarabad'); insert into Hospital values(103,'AIIMS','GandhiNagar','Rajamudhry'); insert into Hospital values(104,'Rohini','Hanamkonda1','Warangal'); insert into Hospital values(105,'JeevanJyoti','Hanamkonda2','Guntur'); insert into Hospital values(106,'OneBlood','KakatiyaColony','Khammam');
Inserting Into Patient
insert into patient values(1,'Prudvi','1984-06- 21','O+','M','4','st21','Vishakapatnam','AndhraPradesh', 500,'2016-07-14','v1','2016 07-14 18:30:00',NULL,101);
insert into patient values(2,'kamesh','1981-07- 13','AB+','M','12','14avenue','Vishakapatnam','AndhraPradesh',
350,'2014-08-08','v1','2014-08-08 10:12:00','2014-08-11 14:50:00',101); insert into patient values(3,'Vidya','1991-04- 24','A+','F','19','19thSt','Secunderabad','AndhraPradesh',
260,'2015-11-19','s1','2015-11-19 14:30:00','2015-11-26 16:25:00',102); insert into patient values(4,'Lohith','1968-11- 09','B+','M','6','18thSt','Secunderabad','AndhraPradesh', 750,'2016-07-16','s1','2016-07-16 19:44:00',NULL,102); insert into patient values(5,'Ritika','1994-12- 16','A+','F','10','Ramnagar','Warangal','AndhraPradesh', 400,'2015 09-11','w1','2015-09-11 11:16:00','2015-09-22',104); insert into patient values(6,'Rakhi','1978-09-13','AB- ','F','11','ShivNagar','Warangal','AndhraPradesh', 325,'2016-07 15','w1','2016-07-15 06:54:00',NULL,104); insert into patient values(7,'Sai Pavan','1972 0229','O+','M','17','Karimnagar','Rajamudhry','AndhraPradesh', 600,'2014-10-01','r1','2014-10-01 11:45:00','2014-10-09',103); insert into patient values(8,'Rajesh','1995-03- 06','AB+','M','20','St06','Rajamudhry','AndhraPradesh', 650,'2016-07-16','r1','2016-07-16 17:13:00',NULL,103); insert into patient values(9,'Avinash','1967-05- 29','A+','F','18','Station_Road','Guntur','AndhraPradesh',
250,'2015-10-25','G1','2015-10-25 09:19:00','2015-10-28 09:44:00',105); insert into patient values(10,'Nikhila','1968-02- 18','AB+','F','01','PostOfficeRoad','Guntur','AndhraPradesh', 600,'2016-07 15','G1','2016-07-15 12:08:00',NULL,105);
insert into patient values(11,'Somal','1977 0114','B+','M','19','St11','Khammam','AndhraPradesh',
550,'2015-12-16','kh1','2015-12-15 15:19:00','2015-12-24 22:10:00',106); insert into patient values(12,'Karun','1979 0619','O+','M','13','St14','Khammam','AndhraPradesh',
440,'2014-08-24','kh1','2014-08-24 19:23:00','2014-08-29 20:35:00',106);
Inserting Into Volunteer
insert into Volunteer values(101,'Abhi','2014-01-12',NULL,'ab@gmail.com','v1'); insert into Volunteer values(102,'Anil','2014-02-24',NULL,'ani@gmail.com','v1'); insert into Volunteer values(103,'Aadarsh','2015-01- 12',NULL,'aad@gmail.com','w1'); insert into Volunteer values(104,'virat','2015-01 12',NULL,'vi@gmail.com','w1'); insert into Volunteer values(105,'divillers','2014 01-12',NULL,'di@gmail.com','G1'); insert into Volunteer values(106,'prabhas','2014 01- 12',NULL,'pra@gmail.com','G1');
insert into Volunteer values(107,'srihari','2016-01-12',NULL,'sri@gmail.com','kh1'); insert into Volunteer values(108,'sricharan','2016-01- 12',NULL,'srich@gmail.com','kh1'); insert into Volunteer values(109,'shami','2017 01-12',NULL,'sh@gmail.com','r1'); insert into Volunteer values(110,'chahal','2017 01-12',NULL,'cha@gmail.com','r1'); insert into Volunteer values(111,'siraj','2018 01-12',NULL,'si@gmail.com','s1'); insert into Volunteer values(112,'gayle','2018 01-12',NULL,'ga@gmail.com','s1');
Inserting Into Volunteer_Phone
insert into Volunteer_Phone values('9722344567','9698521478',101); insert into Volunteer_Phone values('9123654789','9369852147',101); insert into Volunteer_Phone values('9823654789','9969852147',102); insert into Volunteer_Phone values('9723654789','9769852147',102); insert into Volunteer_Phone values('9623654785','9669852145',103); insert into Volunteer_Phone_ values('9123654782','9369852142',103); insert into Volunteer_Phone values('9523654789','9369852145',104); insert into Volunteer_Phone_ values('9163654789','9369852146',104); insert into Volunteer_Phone_ values('9177654789','9369852149',105); insert into Volunteer_Phone_ values('9103654789','9369852141',105); insert into Volunteer_Phone_ values('9193654789','9369852117',106); insert into Volunteer_Phone_ values('9133654789','9369852167',106); insert into Volunteer_Phone_ values('9711928998','9698527478',107); insert into Volunteer_Phone_ values('9123854789','9369856147',108);

About
No description, website, or topics provided.
Resources
 Readme
 Activity
Stars
 0 stars
Watchers
 1 watching
Forks
 0 forks
Releases
No releases published
Create a new release
Packages
No packages published
Publish your first package
Deployments
1
 github-pages 2 years ago
Footer
