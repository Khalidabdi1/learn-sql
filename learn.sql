-- create table products(
-- product_id int ,
-- product_name varchar(100) unique,
-- price decimal(4,2)
-- );


insert into products values
 (1,"humbger",3.99),(2,'fries',1.99),(3,'soda',1.0),(4,'ice creem ',10);

update  products  set price =99 where product_id =3 ;

select *  from products;


-- select * from employees