   create table if not exists users
(
    id serial primary key,
    name varchar(255) not null default '',
    last_name varchar(255) not null default '',
    email varchar(255) UNIQUE not null default '',
    age INTEGER DEFAULT 19,
    work_id int,
    price NUMERIC,

    primary key (id),
    UNIQUE (email)
);

create table if not exists works
(
    id serial primary key,
    works_name varchar(255) not null default '',
    status bool
);

create table if not exists timing
(
    id serial primary key,
    code varchar(255) not null default '',
    track uuid,
    work_id int
);

insert into users (id, name, last_name, email, age, work_id, price)
VALUES ('1' ,'Vlad', 'kirsanov', 'wlad.kirsanov@mail.ru', 19, 001, '25000'),
       ('2' ,'Dima', 'Migin', 'igor.migin@mail.ru', 19, 002, '27000'),
       ('3' ,'Anton', 'Ershov', 'ahtoika12@gmail.com', 19, 003, '26000'),
       ('4' ,'Egor', 'biridze', 'egor.biridze@mail.ru', 19, 004, '26000'),
       ('5' ,'Daniil', 'kirsanov', 'hvck1337@yandex.ru', 19, 005, '29000'),
       ('6' ,'Misha', 'Ryabov', 'mihail.ryabov.2002@mail.ru',19, 006,'30000'),
       ('7' ,'Jaroslav', 'Mihailov', 'tosha.zakharov.0201@mail.ru', 19, 007, '31000'),
       ('8', 'Daniil', 'Petruhin', 'xrddr.space@mail.ru', 19, 008, '32000')

select id, name, last_name, email, age, work_id, price
from users