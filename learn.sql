create table transacations (
transacations_id  int primary key,
amount decimal(5,2)
);

select * from transacations


-- alter table add constraint primary key();


insert into transacations values(1003,3.99);


-- auto_incremate

create table transacations(
transacation_id int primary key auto_increment,
amount decimal(5,3)
);

select * from transacations;

alter table transacations modify column amount decimal(10,2) ;

delete from transacations;

alter table transacations auto_increment=1000;

set sql_safe_updates=0;
insert into transacations(amount) values(100.00);


-- foreign key 

create table customers(
customer_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50)

);

insert into customers(first_name,last_name) values
("khalid","abdi"),
("hamza","abdi"),
("salma","abdi"),
("zozo","abdi");


create table transacations (
transacatios_id int primary key auto_increment,
amount decimal(5,2),
customer_id  int ,
foreign key (customer_id) references customers(customer_id)
);

select * from transacations;
select * from customers;

-- delete foreign key
alter table transacations drop foreign key transacations_ibfk_1;

-- add foreign key ;

alter table transacations add constraint fk_customer_id foreign key(customer_id) references customers(customer_id);


delete from transacations ;
select * from transacations;

alter table transacations auto_increment=1000;

insert into transacations(amount,customer_id) values
(4.99,3),
(2.90,2),
(3.38,3),
(4.99,1);

