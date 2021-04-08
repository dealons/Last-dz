create table if not exists users
(
    id          serial primary key,
    name        varchar(255)        not null default '',
    last_name   varchar(255)        not null default '',
    work        varchar (255)       not null default '',
    email       varchar(255) UNIQUE not null default '',
    work_id     int,
    price       NUMERIC,

    UNIQUE (email)

);

create table if not exists works
(
    id          serial primary key,
    works_name  varchar(255) not null default '',
    status      bool
);

create table if not exists timing
(
    id      serial primary key,
    code    varchar(255) not null default '',
    track   uuid,
    work_id int,
    user_id int
);

insert into users (id, name, last_name, email, price)
VALUES (1, 'Migin', 'Dmitriy', 'igor.migin@mail.ru', '45000'),
       (2, 'Mihail', 'Ryabov', 'mihail.ryabov.2002@mail.ru', '45000'),
       (3, 'Anton', 'Ershov', 'ahtoika12@gmail.com', '55000'),
       (4, 'Daniil', 'Kirsanov', 'hvck1337@yandex.ru', '66000'),
       (5, 'Danila', 'Petrukhin', 'danilapetrukhin@mail.ru', '64000'),
       (6, 'Vlad', 'Kirsanov', 'wladnext98@mail.ru', '40000'),
       (7, 'Jaroslav', 'Mihailov', 'tosha.zakharov.0201@mail.ru', '38000'),
       (8, 'Egor', 'Biridze', 'egor.biridze@mail.ru', '27000');

select DISTINCT id, name, last_name, email, price from users;
from users where price >= 55000 or name = 'Mihailov'
order by price ASC;

select DISTINCT name, last_name, price
from users where price >=55000 or name = 'Mihailov' limit 3;

insert into users (name, last_name, email ) values  ('Migin', 'Dmitriy','igor.migin@mail.ru');
select id, name, last_name, email from users where price >= 68000 or  name  = 'Dmitriy';

select DISTINCT name, last_name, emile
from users where id = 271;
updata users set name = 'Dmitriy_to_the_building', last_name = 'Migin123' whare id = 271;


select id, name, last_name, email from users where last_name = 'Migin123';

select id, name, last_name, email from users where id in (8,28,37);

select id, name, last_name, email from users where id not in (2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36);

select id, name, last_name, email from users where id >=8 and id <=18;