create database Address_Book_Service;
show databases;
use Address_book_Service;

-- UC2

create table addressBook (firstname varchar(20),lastname varchar(20),address varchar(20),
city varchar(20),state varchar(20),zip varchar(6),phone varchar(12),email varchar(20));
desc addressBook;

-- UC3

Insert into addressBook values ('Dipesh','Rathod','Pratik apt','Thane','Maharashtra','421503','9999999999','dip@gmail.com'),
('Shubham','Patil','Shubh deep apt','Gandhinagar','Gujrat','671324','888888888','shubh@gmail.com' ),
('Akshay','Kumbhar','Shram Safalya','Mumbai','Maharashtra','400026','777777777','Aks@gmail.com' );
select * from addressBook;

-- UC4

update addressBook set phone = '8888888899' where firstname = 'Shubham';
select * from addressBook;

-- UC5

delete from addressBook where firstname = 'Akshay';
select * from addressBook;

-- UC6

select * from addressBook where city = 'Thane' OR state = 'Maharashtra';

-- UC7

select count(*) from addressBook where state = 'Maharashtra' && city='Thane';


Insert into addressBook values('Akshay','Kumbhar','Shram Safalya','Mumbai','Maharashtra','400026','777777777','Aks@gmail.com' );
select * from addressBook;


Insert into addressBook values('Ram','Kumar','Sadhana Nivas','Mumbai','Maharashtra','400366','666777777','Ram@gmail.com' );

-- UC8

select * from addressBook where city = 'Mumbai' order by firstname;

-- UC9

alter table addressBook add column bookname varchar(20), add column booktype varchar(20);
update addressBook set bookname='Book1',booktype='Family' where firstname = 'Dipesh';
update addressBook set bookname='Book2',booktype='Friend' where firstname = 'Akshay';
update addressBook set bookname='Book3',booktype='Family' where firstname = 'Shubham';
select * from addressBook;

-- UC10

select count(*) from addressBook where booktype='Family';

-- UC11

Insert into addressBook values ('Ashish','Navre','Mohan Palm','Malgoan','Delhi','577527','7894561235','Ashish@gmail.com','Book4','Friend' ),
('Mangesh','Phadke','Gayatri Nagar','Ludhiana','Punjab','933527','8974829202','Mangesh@gmail.com','Book5','Family' );
select * from addressBook;
