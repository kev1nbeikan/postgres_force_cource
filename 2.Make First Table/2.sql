alter table pizzeria
    add constraint ch_rating check ( rating between 0 and 5);

insert into pizzeria
values (1, 'Pizza Hut', 4.6);
insert into pizzeria
values (2, 'Dominos', 4.3);
insert into pizzeria
values (3, 'DoDo Pizza', 3.2);
insert into pizzeria
values (4, 'Papa Johns', 4.9);


-- Добавление нового поля pizzeria insert into select >>



-- <<  Добавление нового поля pizzeria


-- Добавление нового поля pizzeria insert into >>


-- <<  Добавление нового поля pizzeria


insert into person_visits
values (1, 1, 1, '2022-01-01');
insert into person_visits
values (2, 2, 2, '2022-01-01');
insert into person_visits
values (3, 2, 1, '2022-01-02');
insert into person_visits
values (4, 3, 5, '2022-01-03');
insert into person_visits
values (5, 3, 6, '2022-01-04');
insert into person_visits
values (6, 4, 5, '2022-01-07');
insert into person_visits
values (7, 4, 6, '2022-01-08');
insert into person_visits
values (8, 5, 2, '2022-01-08');
insert into person_visits
values (9, 5, 6, '2022-01-09');
insert into person_visits
values (10, 6, 2, '2022-01-09');
insert into person_visits
values (11, 6, 4, '2022-01-01');
insert into person_visits
values (12, 7, 1, '2022-01-03');
insert into person_visits
values (13, 7, 2, '2022-01-05');
insert into person_visits
values (14, 8, 1, '2022-01-05');
insert into person_visits
values (15, 8, 2, '2022-01-06');
insert into person_visits
values (16, 8, 4, '2022-01-07');
insert into person_visits
values (17, 9, 4, '2022-01-08');
insert into person_visits
values (18, 9, 5, '2022-01-09');
insert into person_visits
values (19, 9, 6, '2022-01-10');



insert into menu
values (1, 1, 'cheese pizza', 900);
insert into menu
values (2, 1, 'pepperoni pizza', 1200);
insert into menu
values (3, 1, 'sausage pizza', 1200);
insert into menu
values (4, 1, 'supreme pizza', 1200);

insert into menu
values (5, 6, 'cheese pizza', 950);
insert into menu
values (6, 6, 'pepperoni pizza', 800);
insert into menu
values (7, 6, 'sausage pizza', 1000);

insert into menu
values (8, 2, 'cheese pizza', 800);
insert into menu
values (9, 2, 'mushroom pizza', 1100);

insert into menu
values (10, 3, 'cheese pizza', 780);
insert into menu
values (11, 3, 'supreme pizza', 850);

insert into menu
values (12, 4, 'cheese pizza', 700);
insert into menu
values (13, 4, 'mushroom pizza', 950);
insert into menu
values (14, 4, 'pepperoni pizza', 1000);
insert into menu
values (15, 4, 'sausage pizza', 950);

insert into menu
values (16, 5, 'cheese pizza', 700);
insert into menu
values (17, 5, 'pepperoni pizza', 800);
insert into menu
values (18, 5, 'supreme pizza', 850);

create table person_order
(
    id         bigint primary key,
    person_id  bigint not null,
    menu_id    bigint not null,
    order_date date   not null default current_date,
    constraint fk_order_person_id foreign key (person_id) references person (id),
    constraint fk_order_menu_id foreign key (menu_id) references menu (id)
);

insert into person_order
values (1, 1, 1, '2022-01-01');
insert into person_order
values (2, 1, 2, '2022-01-01');

insert into person_order
values (3, 2, 8, '2022-01-01');
insert into person_order
values (4, 2, 9, '2022-01-01');

insert into person_order
values (5, 3, 16, '2022-01-04');

insert into person_order
values (6, 4, 16, '2022-01-07');
insert into person_order
values (7, 4, 17, '2022-01-07');
insert into person_order
values (8, 4, 18, '2022-01-07');
insert into person_order
values (9, 4, 6, '2022-01-08');
insert into person_order
values (10, 4, 7, '2022-01-08');

insert into person_order
values (11, 5, 6, '2022-01-09');
insert into person_order
values (12, 5, 7, '2022-01-09');

insert into person_order
values (13, 6, 13, '2022-01-01');

insert into person_order
values (14, 7, 3, '2022-01-03');
insert into person_order
values (15, 7, 9, '2022-01-05');
insert into person_order
values (16, 7, 4, '2022-01-05');

insert into person_order
values (17, 8, 8, '2022-01-06');
insert into person_order
values (18, 8, 14, '2022-01-07');

insert into person_order
values (19, 9, 18, '2022-01-09');
insert into person_order
values (20, 9, 6, '2022-01-10');

