-- auto-generated definition
create table "order"
(
    id            serial
        constraint order_pk
            primary key,
    title         text,
    description   text,
    total_price   text,
    image_url     varchar,
    column_6      integer,
    created_at    date,
    column_8      integer,
    updated_at    date,
    deleted_at    date,
    current_money integer,
    user_id       varchar,
    username      varchar,
    tags          varchar
);

alter table "order"
    owner to postgres;

create unique index order_id_uindex
    on "order" (id);

