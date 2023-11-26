--ONE-TO-ONE--

CREATE TABLE IF NOT EXISTS users (
	id serial primary key not null, -- coloana id joaca dublu rol de PK si FK pentru ca o cheie primara este by default unica
	name varchar (50) not null,
	email varchar (50) null,
	phone_number varchar (20) null
);

CREATE TABLE IF NOT EXISTS adress (
	id serial primary key not null,
	adress varchar (200) not null,
	is_valid bool not null,
	foreign key (users_id) references users (id)
);

CREATE TABLE IF NOT EXISTS books (
	id serial primary key not null,
	nume varchar (100) not null,
	isbn varchar (10) not null,
	published_date date not null,
	price decimal null
);

CREATE TABLE IF NOT EXISTS users_books (
	id serial primary key not null,
	user_id integer not null,
	books_id integer not null,
	review text not null,
	review_date date not null,
	foreign key (user_id) references users (id),
	foreign key (books_id) references books (id)
);

CREATE TABLE IF NOT EXISTS profesor (
	id serial primary key not null,
	nume_profesor varchar (50) not null,
	materie_predata varchar (50) not null,
	scoala varchar (100) not null
);

CREATE TABLE IF NOT EXISTS materie (
	id serial primary key not null,
	denumire_materie varchar (50) not null,
	descriere text not null,
	durata time not null
);

CREATE TABLE IF NOT EXISTS materie_profesor (
	id serial primary key not null,
	id_profesor integer not null,
	id_materie integer not null,
	foreign key (id_profesor) references profesor (id),
	foreign key (id_materie) references materie (id)
);