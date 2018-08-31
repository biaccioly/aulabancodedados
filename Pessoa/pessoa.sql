create table pessoa (codigo int primary key auto_increment, nome varchar(40));

insert into pessoa (nome) values ('Beatriz');

insert into pessoa values (null, 'Beatriz'), (null, 'Arthur'), (null, 'Mariana');

select * from pessoa;

delete from pessoa where codigo in(5, 6, 7, 8);
delete from pessoa where codigo in(9, 10, 11, 12, 13, 14, 15);

select * from pessoa;
insert into pessoa values (null, 'Katia');

insert into pessoa values (5, 'Caio');
insert into pessoa values (null, 'Claudia');

select * from pessoa;

insert into pessoa values (6, 'Luiza');

alter table pessoa auto_increment=1;
insert into pessoa values (null, 'Alex');

select * from pessoa;

insert into pessoa values(null, 'Joana');

drop table pessoa;