select * from products ;

alter table products alter price set  default 0;

insert into products(product_id,product_name) values
(5,"starw"),(6,"napkin"),(7,"fork"),(8,"spoon");

create table transacation(
transacation_id int,
amount decimal (5,2),
transacation_date datetime default now()
);

select * from transacation;

insert into transacation(transacation_id,amount) values(3,8.99);