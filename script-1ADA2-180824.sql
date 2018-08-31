-- Criação de um banco de dados chamado bandtec
-- Nas máquinas da faculdade não precisa executar esse comando, 
-- pois esse banco de dados já está criado
create database bandtec;

-- Para selecionar o banco de dados bandtec
use bandtec;

-- Criação da tabela Aluno, com campos ra, nome e bairro
create table Aluno (
   ra int primary key,
   nome varchar(30),
   bairro varchar(30)
   );
   
-- Visualizar os dados da tabela Aluno
select * from Aluno;

-- Inserir os dados de um aluno
insert into Aluno 
   values (52079, 'Vitor', 'Pirituba');

-- Inserir os dados de mais 4 alunos
insert into Aluno
   values (52105, 'Viktor', 'Penha'),
          (52094, 'Claudia', 'Grajau'),
          (52059, 'Beatriz', 'Ipiranga'),
          (52060, 'Bruno', 'Ipiranga');

-- Visualizar apenas o nome dos alunos
select nome from Aluno;

-- Visualizar o nome e o ra (nessa ordem) dos alunos
select nome,ra from Aluno;

-- Visualizar todos os dados dos alunos cujo bairro seja 'Ipiranga'
select * from Aluno where bairro = 'Ipiranga';   

-- Vsualizar todos os dados do aluno de ra 52105
select * from Aluno where ra = 52105;

-- Visualizar apenas o ra dos alunos cujo bairro seja 'Ipiranga'
select ra from Aluno where bairro = 'Ipiranga';

-- Visualizar todos os dados dos alunos de ra menor do que 52090
select * from Aluno where ra < 52090;

-- Visualizar todos os dados dos alunos de ra maior do que 52090
select * from Aluno where ra > 52090;

-- Visualizar todos os dados dos alunos de ra menor ou igual a 52094
select * from Aluno where ra <= 52094;

-- Visualizar todos os dados dos alunos de ra menor do que 52094
select * from Aluno where ra < 52094;

-- Visualizar todos os dados dos alunos de ra maior ou igual a 52079
select * from Aluno where ra >= 52079;

-- Visualizar todos os dados dos alunos de ra diferente de 52105
select * from Aluno where ra <> 52105;

-- Visualizar todos os dados dos alunos de ra maior ou igual a 52060
-- e menor do que 52090
select * from Aluno where ra >= 52060 and ra < 52090;

-- Visualizar todos os dados dos alunos cujo bairro seja diferente de 'Ipiranga'
select * from Aluno where bairro != 'Ipiranga';

-- Visualizar todos os dados dos alunos cujo nome comece com a letra B
select * from Aluno where nome like 'B%';

-- Visualizar todos os dados dos alunos cujo bairro comece com a letra p
select * from Aluno where bairro like 'p%';

-- Visualizar todos os dados dos alunos cujo nome termine com a letra r
select * from Aluno where nome like '%r';

-- Visualizar todos os dados dos alunos cujo bairro termine com a letra a 
select * from Aluno where bairro like '%a';

-- Visualizar todos os dados dos alunos cujo nome contenha a letra t
select * from Aluno where nome like '%t%';

-- Visualizar todos os dados dos alunos cujo nome tenha a letra i como segunda letra
select * from Aluno where nome like '_i%';

-- Inserir mais um aluno
insert into Aluno
   values (52078, 'Vinicius', 'Favela da Fumaça');

-- Visualizar todos os dados da tabela
select * from Aluno;   

-- Visualizar todos os dados dos alunos cujo nome tenha a letra i como penúltima letra
select * from Aluno where nome like '%i_';

-- Visualizar todos os dados dos alunos cujo nome tenha a letra k como terceira letra
select * from Aluno where nome like '__k%';

-- Visualizar todos os dados dos alunos cujo nome tenha a letra n como terceira letra de trás para frente
select * from Aluno where bairro like '%n__';

-- Visualizar todos os dados da tabela
select * from Aluno;

-- Visualizar todos os dados da tabela ordenados pelo nome
select * from Aluno order by nome;

-- Visualizar todos os dados da tabela ordenados pelo bairro
select * from Aluno order by bairro;

-- Visualizar todos os dados da tabela ordenados pelo nome em ordem decrescente
select * from Aluno order by nome desc;

-- Visualizar todos os dados da tabela ordenados pelo bairro em ordem decrescente
select * from Aluno order by bairro desc;

-- Visualizar todos os dados dos alunos de ra menor do que 52090, ordenados pelo bairro
select * from Aluno where ra < 52090 order by bairro;

-- Inserir mais um aluno chamado Beatriz, de outro bairro: Cambuci
insert into Aluno 
   values (52100, 'Beatriz', 'Cambuci');

-- Visualizar todos os dados da tabela ordenados pelo nome e se o nome for igual, ordenado pelo bairro
select * from Aluno order by nome, bairro;

-- Visualizar todos os dados da tabela ordenados pelo bairro 
-- A palavra asc indica que a ordem é crescente
-- Se não especificar asc, nem desc, o padrão é a ordem crescente
select * from Aluno order by bairro asc;

-- Atualizar o bairro para 'Pinheiros' do aluno de ra 52059
update Aluno set bairro = 'Pinheiros' where ra = 52059;  

-- Visualizar todos os dados da tabela
select * from Aluno;  

-- Atualizar o nome e o bairro do aluno de ra 52060
update Aluno set nome='Bruno Silva',
                 bairro='Tatuapé' where ra = 52060;

-- Excluir o aluno de ra 52100
delete from Aluno where ra = 52100;  

-- Visualizar todos os dados da tabela
select * from Aluno;               

-- Visualizar todos os dados dos alunos de sobrenome Silva
select * from Aluno where nome like '%Silva';

-- Eliminar a tabela Aluno
drop table Aluno;

-- Visualizar todos os dados da tabela
-- Vai dar erro, pois a tabela Aluno já não existe mais
select * from Aluno;