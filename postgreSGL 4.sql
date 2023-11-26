/* ASSIGNMENT 
1. doua tabele cu cheie primara simpla
2. doua tabele cu cheie primara compusa
3. fiecare tabel trebuie sa aiba o constrangere de UNIQUE pe una din coloane
4. minim 4 coloane per tabel
5. sa utilizati tipurile INTEGER, SERIAL, VARCHAR, DATE, CHAR si SMALLINT
6. cheia priara se seteaza dupa definirea coloanelor
*/

CREATE TABLE IF NOT EXISTS produse (
	id integer unique not null,
	cod_produs integer not null,
	culoare char (15) not null,
	pret float not null,
	primary key (id)
);

CREATE TABLE IF NOT EXISTS stoc_marfa (
	id integer unique not null,
	cod_produs integer not null,
	stoc_marfa smallint not null,
	data_stoc date not null,
	primary key (id)
);

CREATE TABLE IF NOT EXISTS clienti (
	id serial not null,
	nume_client varchar (50) not null,
	numar_telefon integer not null unique,
	email varchar (100),
	primary key (id, nume_client, numar_telefon)
);

CREATE TABLE IF NOT EXISTS rachete_test (
	id serial not null,
	model_racheta varchar (50) not null,
	cod_racheta integer not null,
	serie_racheta smallint not null,
	primary key (id, model_racheta, serie_racheta)
);