create table author(
id bigint primary key auto_increment,
first_name varchar(32) not null,
last_name varchar(32) not null,
bio varchar(512)
);

create table ksiazka(
    id bigint primary key auto_increment,
    tytul varchar(32) not null ,
    cena int not null ,
    autor_id bigint not null,

    foreign key ksiazka_autor_fk(autor_id) references author(id)
)