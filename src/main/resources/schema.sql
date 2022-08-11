create schema if not exists netology;

create table if not exists netology.CUSTOMERS
(
    id           int         not null auto_increment primary key,
    name         varchar(50) not null,
    surname      varchar(50) not null,
    age          int,
    phone_number varchar(20)
);

create table if not exists netology.ORDERS
(
    id           int       not null auto_increment primary key,
    date         timestamp not null default now(),
    customer_id  int       not null references netology.CUSTOMERS(id),
    product_name varchar(50),
    amount       int
);
