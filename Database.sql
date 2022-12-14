----UC1----
create database AddressBookServiceDB

use AddressBookServiceDB


----UC2----
create table Addressbook
(
Id int Primary Key Identity (1,1),
FirstName VarChar (200),
LastName varchar(150),
Address varchar(250),
City varchar(25),
State varchar(60),
ZipCode int,
PhoneNumber Varchar(10),
Email varchar(150)
);

----UC3----
Insert into Addressbook Values ('Rajesh','yadav','Bemetara','Durg','Chhattisgarh',490022,'7898625487','Mohan321@gmail.com'),
('Pukesh','yadav','Berla','Durg','Chhattisgarh',542154,'8952241265','rajd99@gmail.com'),
('murali','Upadhyay','gondiya','mumbai','Maharastra',675438,'8757889475','mural001@gmail.com'),
('komal','patil','saibaba nagar','surat','gujarat',34567,'7854216785','komal222@gmail.com'),
('riya','khairnar','shiv nagar','jaipur','Rajasthan',432007,'7285108928','riya8993@gmail.com');

----UC4----
Update Addressbook Set City='Banglore',State='karnatak' where FirstName='murali';
Update Addressbook Set Address='bhilai',ZipCode='491335' where FirstName='riya';
select * from Addressbook

----UC5----
Delete from Addressbook where FirstName='riya';

-----UC6-----
Select * from Addressbook where City='Durg' Order By FirstName;
Select * from AddressBook where State='Chhattisgarh' Order By FirstName;

--UC7--
select count(*) from AddressBook where city='Durg';
select count(*) from AddressBook where State='Chhattisgarh';

--UC8--
select FirstName from Addressbook Order By City ASC;

--UC9--
 alter table Addressbook ADD Type varchar (10);
 select * from Addressbook
update AddressBook SET Type ='Family' Where FirstName = 'Pukesh';
update AddressBook SET Type = 'Profession' Where FirstName='murali';
update AddressBook SET Type = 'friends' Where FirstName='Rajesh';
update AddressBook SET Type = 'Family' Where FirstName='komal';

---UC10---
Select COUNT(*),Type from Addressbook Group by Type


---UC11----


Insert into Addressbook Values('gajpal','yadav','Bastar','Bastar','Chhattisgarh',490022,'9852474487','gajpal321@gmail.com','Friend')

----UC12----
Select * from Addressbook where City = 'Durg' or State = 'Chhattisgarh'
Select Count(*),State,City from Addressbook Group by State,City
select * from Addressbook where City='Durg' order by Firstname
Select COUNT(*),Type from Addressbook Group by Type