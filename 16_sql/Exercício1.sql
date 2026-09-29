--- alunos 
-- matricula, nome, email, nascimento, periodo

-- CRIAÇÃO TABELA --
create table alunos (
	matricula varchar(9) primary key,
	nome varchar(100) not null,
	email varchar(150) not null unique,
	nascimento date not null,
	semestre integer not null default 1,
	
	-- Se o input do CPF conter caractéres especiais, o frontend fará o tratamento de dados.
	-- Assim apenas os números corretos do CPF serão armazenados no banco de dados
	check (CHAR_LENGTH(matricula) = 9)

);

-- INSERÇÃO LINHA (apenas um aluno)
insert into alunos (matricula, nome, email, nascimento, semestre)
values ('000000001', 'Marcos', 'marcos@gmail.com', '2000-12-25', 1);

-- INSERÇÃO LINHA (valores faltantes / default)
insert into alunos (matricula, nome, email, nascimento)
values ('000000002', 'Catarina', 'catarina@outlook.com', '1999-11-30');

-- INSERÇÃO LINHAS (mais de um aluno)

insert into alunos (matricula, nome, email, nascimento, semestre)
values
	('000000003', 'Afonso', 'afonso@gmail.com', '2010-10-27', 2),
	('000000004', 'Patricio', 'patricio@outlook.com', '2004-04-30', 3),
	('000000005', 'George', 'george@gmail.com', '1995-04-27', 6);

-- ATUALIZAÇÃO DE LINHA (update)
update alunos
	set semestre = 4
	where matricula = '000000001';













	
	