CREATE TABLE IF NOT EXISTS country (
	id serial primary key not null,
	indicativ char (3) not null,
	geometry varchar (100) not null,
	area decimal not null
);

CREATE TABLE IF NOT EXISTS county (
	id serial primary key not null,
	country_id integer not null,
	area decimal not null,
	siruta integer not null,
	geometry varchar (100) not null default 'POLYGON',
	foreign key (country_id) references country (id)
);

CREATE TABLE IF NOT EXISTS universitate (
	id serial primary key not null,
	nume varchar (150) not null,
	adresa text not null,
	oras varchar (50) not null,
	numar_telefon integer not null
);

CREATE TABLE IF NOT EXISTS facultate (
	id serial primary key not null,
	universitate_id integer not null,
	departament varchar (100) not null,
	adresa_departament text not null,
	nr_studenti smallint not null,
	nr_telefon integer not null,
	start_hour time not null,
	stop_hour time not null,
	foreign key (universitate_id) references universitate (id)
);