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