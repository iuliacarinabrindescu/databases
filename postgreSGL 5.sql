CREATE TABLE elevi (
	id integer primary key not null,
	nume_elev varchar (50) not null,
	nota integer not null,
	puncte_bonus float not null
);

CREATE TABLE produse (
	id integer primary key not null,
	produs varchar (50) not null,
	culoare varchar (50) not null,
	cod_produs integer not null
);

CREATE TABLE IF NOT EXISTS elevi (
	id integer primary key not null,
	nume_elev varchar (50) not null,
	nota integer not null,
	puncte_bonus float not null
);

CREATE TABLE IF NOT EXISTS roles (
	ID INTEGER PRIMARY KEY NOT NULL,
	name varchar (255) unique not null
);

CREATE TABLE IF NOT EXISTS teacher_roles (
	ID serial PRIMARY KEY NOT NULL,
	name varchar (255) unique not null
);

CREATE TABLE if not exists account_roles (
	id serial not null,
	name varchar (50) not null unique,
	creation_date date not null,
	primary key (id)
);

--urmeaza sa creem un tabel cu cheie primara simpla
CREATE TABLE if not exists account_roles (
	id serial primary key not null,
	name varchar (50) not null unique,
	creation_date date not null,
);

/*
CREATE TABLE if not exists account_roles2 (
	id serial not null,
	name varchar (50) not null unique,
	creation_date date not null,
	primary key (id, name)
);
*/

CREATE TABLE if not exists account_roles3 (
	id integer not null,
	name varchar (50) not null,
	creation_date date not null,
	primary key (id, name)
);

