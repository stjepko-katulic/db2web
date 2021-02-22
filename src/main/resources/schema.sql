create table pitanja
(
    id int generated always as identity primary key,
    pitanje varchar(500) not null,
    broj_tocnih_odgovora int not null
);


create table odgovori
(id int generated always as identity primary key,
 pitanje_id int not null,
 odgovor varchar(500) not null,
 tocan varchar(2),
 constraint fk_const foreign key (pitanje_id) references odgovori(id),
 constraint uq_con UNIQUE (pitanje_id, odgovor));