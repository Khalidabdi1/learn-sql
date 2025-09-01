select * from employees;

alter table employees add constraint chk_hourly_pay check(hourly_pay >=2);

INSERT INTO employees values(6,"ali","tset",90,'2002-1-3');

alter table employees drop check chk_hourly_pay;

