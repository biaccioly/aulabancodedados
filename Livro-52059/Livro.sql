create table Livro (codigo int primary key, titulo varchar(40), auto varchar (30), genero varchar(10));

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
select * from livro order by titulo desc;