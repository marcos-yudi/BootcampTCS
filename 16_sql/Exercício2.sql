-- CLIENTE ( cpf, nome, carteira, email )

create table cliente (
	cpf varchar(11) primary key,
	nome varchar(100) not null,
	carteira numeric(10, 2) not null default 0,
	email varchar(150) not null, 

	-- decidi não colocar a condição do valor da carteira ser apenas >= 0
	-- acho que isso pode abrir uma exploração de possíveis transações em que o saldo da conta ficaria negativo, mas então o valor fica igual a zero
	
	check(char_length(cpf) = 11)
);


-- adicionar 6 pessoas

insert into cliente (cpf, nome, carteira, email)
	values
		('00000000004', 'Marcelo', 54.00, 'marcelo@gmail.com'),
		('00000000005', 'Yasmin', 867.45, 'yasmin@outlook.com'),
		('00000000006', 'Pedro', 42.78, 'pedro@hotmail.com'),
		('00000000007', 'Higor', 324.67, 'higor@gmail.com'),
		('00000000008', 'Giovanna', 446.21, 'giovanna@hotmail.com'),
		('00000000009', 'Legolas', 825.54, 'legolas@gmail.com');


-- deletar registro errado

delete from cliente
	where cpf = '00000000004';


-- atualizar carteira (30.00 , 70.00 , 80.00)

update cliente
	set carteira = 30.00
	where cpf = '00000000005';


update cliente
	set carteira = 70.00
	where cpf = '00000000006';


update cliente
	set carteira = 80.00
	where cpf = '00000000007';


update cliente 
	set carteira = 0.00
	where carteira >= 90.00;



-- realizar busca de pessoas com carteira entre 0.00 e 30.00
select * from cliente
	where carteira between 0 and 30;


-- deletar carteiras zeradas
delete from cliente
	where carteira = 0;


