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

-- join
select * from transacations;

insert into transacations (amount,customer_id) values(
1.00,null
);

select * from customers;

insert into customers (first_name,last_name)values(
"poppy","puff"
);
-- inner join
select * from transacations inner join customers on transacations.customer_id =customers.customer_id;

-- function
select sum(amount) as "sum" from transacations ;

select * from transacations;

select * from employees;

select concat(first_name ," ", last_name) as "full name " from employees;

-- wild cards

-- _  THIS WILL RETURN ANY VALUE THAT START WITH A 
select * from employees where first_name like "K%";
-- this will return any value that will return a in the end
select * from employees where first_name like "%a";

-- 
select * from employees;