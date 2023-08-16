create table autor(
	
	idAutor serial primary key,
	descricao varchar(50),
	fk_editora serial,
	
	constraint fk_autorEditora foreign key(fk_editora) references editora(idEditora)
);

create table genero(
	
	idGenero serial primary key,
	descricao varchar(50),
	fk_autor serial,
	
	constraint fk_autorGenero foreign key(fk_autor) references autor(idAutor)
);

create table editora(
	
	idEditora serial primary key,
	descricao varchar(50)
);

insert into editora(descricao) values('Belas Letras');
insert into autor(descricao) values('Samuel Gomes');
insert into genero(descricao) values('Biografia');

