CREATE TABLE IF NOT EXISTS proprietar (
	id serial primary key not null,
	nume varchar (50) not null,
	cnp varchar (13) not null,
	serie_nr_ci varchar (9) not null
);

CREATE TABLE IF NOT EXISTS adresa_proprietar (
	id serial primary key not null,
	adress varchar (200) not null,
	current_adress bool default TRUE,
	foreign key (id) references proprietar (id) --implementare relatie One-to-One; FK joaca rol dublu si de FK fiind unica
);

CREATE TABLE IF NOT EXISTS terenuri (
	id serial primary key not null,
	cf integer not null,
	intravilan bool not null,
	suprafata decimal not null,
	categorie_folosinta varchar (5) not null
);

-- implementare relatie Many-to-Many proprietar cu terenuri
CREATE TABLE IF NOT EXISTS proprietar_terenuri (
	id serial primary key not null,
	proprietar_id integer not null,
	terenuri_id integer not null,
	foreign key (proprietar_id) references proprietar (id),
	foreign key (terenuri_id) references terenuri (id)
);

CREATE TABLE IF NOT EXISTS proprietar_terenuri2 (
	proprietar_id integer not null,
	terenuri_id integer not null,
	primary key (proprietar_id, terenuri_id),
	foreign key (proprietar_id) references proprietar (id),
	foreign key (terenuri_id) references terenuri (id)
);