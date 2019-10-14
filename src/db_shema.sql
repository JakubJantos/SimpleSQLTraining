USE jak_jan;

create table animals (
    id bigint primary key auto_increment,
    name varchar(64) not null,
    species varchar(64) not null,
    gender varchar(1) null,
    age int null,
    weight int null
);

alter table animals add column date_of_birth date null;

insert into animals(name,species)values ('jum bim','pies');
select * from animals;

insert into animals (name, species, gender, age, weight) values
('filemon','kot', 'M', 3 ,8),
('twity','kanarek', 'M', 1 ,1),
('agnes','swinka morska', 'F', 2 ,1),
('rocky','pies', 'M', 4 ,12),
('danny','pingwin', 'M', 3 ,10),
('arnold','pies', 'M', 3 ,10),
('hajdus','swinia', 'M', 2 ,40),
('ania','kot', 'F', 2 ,2),
('xena','pies', 'F', 3 ,10),
('smrodek','krolik', 'M', 3 ,1);
select *from animals;

UPDATE animals set gender = 'M', age = 5, weight = 9 where id = 11;

create table user_test(
    id bigint primary key auto_increment,
    username varchar(32) not null unique,
    mail varchar(32) not null,
    age int not null
);

select *from user_test;

insert into user_test(username, mail, age) VALUES
('adma','adma@wp.pl',11),
('ja','ja@wp.pl',34),
('ty','ty@wp.pl',52),
('my','ty@wp.pl',13),
('wy','wy@wp.pl',8),
('oni','oni@wp.pl',67),
('ono','ono@wp.pl',95);

update user set password = AES_ENCRYPT('qwerty7','001') where id=7;

select * from user;

create table dog(id bigint primary key auto_increment,
name varchar(64),
age int);


select * from dog;
select * from user;

insert into dog(name, age) select name, age from animals where species = 'pies';

insert into user (username, password, pet_id)
values ('ja','kappa', 57) on duplicate key update password = AES_ENCRYPT('kappa','002'),pet_id = 57;

update user
set password = aes_encrypt('kappa', '002')
where id = 1;


select *
from animals;

delete from animals where id = 61;

select *
from user;

create table licency(
    id bigint primary key auto_increment,
    expiration_date date not null
);

insert into licency (expiration_date)values ('2018-10-10');

select *from licency;

update licency set expiration_date = date_add(expiration_date, interval 395 day );

select datediff(expiration_date, curdate())from licency;

select truncate(pi(),2),name from animals;

select name, case when length(name)>5 then concat(substring(name,1,5), '...')
else name end as names from animals;

create view female_animals as select name, age from animals where gender = 'F';

select * from female_animals;

create view owner_whyw_pet as
select u.username, a.name
from user u
         inner join animals a on u.pet_id = a.id;

select * from owner_whyw_pet;


create view species_intrens as
select *from (select species,count(*) from animals group by species order by count(*) desc limit 1) a
union
select * from (select species,count(*) from animals group by species order by count(*) asc limit 1) b;


select * from species_intrens;

select * from user

