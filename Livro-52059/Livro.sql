create table Livro (codigo int primary key, titulo varchar(40), autor varchar (30), genero varchar(30));

insert into livro values 
(1, 'Encontro com Rama', 'Arthur C. Clark', 'Suspense'),
(2, 'Desus Americanos', 'Neil Gaiman', 'Suspense'),
(3, 'Alucinadamente Feliz', 'Jenny Lawson','Biografia'),
(4, 'O Alquimista', 'Paulo Coelho', 'Romance'),
(5, 'Filhos de Anansi', 'Neil Gaiman', 'Romance'),
(6, 'O Fim da Infancia', 'Arthur C. Clack', 'Ficção'),
(7, 'Eu sou a lenda', 'Richard Matheson', 'Ficção');

select * from livro;
select titulo, genero from livro;
select * from livro where genero='Suspense';
select * from livro where autor='Neil Gaiman';
select * from livro order by titulo;
select * from livro order by autor desc;
select * from livro where titulo like 'E%';
select * from livro where autor like '%n';
select * from livro where genero like '_i%';
select * from livro where titulo like '%i_';
update livro set genero='Suspense' where codigo=6;
select * from livro;
delete from livro where codigo = 3;
select * from livro;
drop table livro; 