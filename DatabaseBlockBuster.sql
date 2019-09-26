create table attori(
    id int primary key,
    nome varchar(32) not null,
    cognome varchar(32) not null,
    annoNascita int,
    nazionalita varchar(32)
);

insert into attori values (1,'Tom','Cruise',1962,'Statunitense');
insert into attori values (2,'Anthony','Edwards',1962,'Statunitense');
insert into attori values (3,'Tom','Hanks',1956,'Statunitense');
insert into attori values (4,'Kelly','McGillis',1957,'Statunitense');

create table generi(
    id int primary key,
    nome varchar(64)
);

insert into generi values (1,'Azione');
insert into generi values (2,'Commedia');
insert into generi values (3,'Drammatico');

create table film(
    id int primary key,
    titolo varchar(64) not null,
    anno int,
    genere int default null references generi(id)
);

insert into film values (1,'Top gun',1896,1);
insert into film values (2,'La rivincita dei nerds',1984,2);
insert into film values (3,'Forrest Gump',1994,3);

create table recita(
    attoreId int not null references attori(id),
    filmId int not null references film(id)
);

insert into recita values (1,1);
insert into recita values (2,1);
insert into recita values (4,1);
insert into recita values (2,2);
insert into recita values (3,3);
