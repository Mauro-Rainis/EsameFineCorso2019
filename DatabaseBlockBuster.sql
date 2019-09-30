create table attori(
    id int primary key,
    nome varchar(32) not null,
    cognome varchar(32) not null,
    annoNascita int,
    nazionalita varchar(32),
    urlFoto varchar(256)
);

insert into attori values (1,'Tom','Cruise',1962,'Statunitense','https://pad.mymovies.it/filmclub/attori/9669.jpg');
insert into attori values (2,'Arnold','Schwarzenegger',1947,'Austriaca','https://pad.mymovies.it/filmclub/attori/5378.jpg');
insert into attori values (3,'Tom','Hanks',1956,'Statunitense','https://pad.mymovies.it/filmclub/attori/4606.jpg');
insert into attori values (4,'Julia','Roberts',1967,'Statunitense','https://pad.mymovies.it/filmclub/attori/178.jpg');

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
    genereId int default null references Generi(Id),
    protagonistaId int not null references attori(Id)    
);

insert into film values (1,'Top gun',1896,1,1);
insert into film values (2,'Forrest Gump',1994,3,3);
insert into film values (3,'Commando',1994,1,2);
insert into film values (4,'Pretty woman',1990,2,4);
insert into film values (5,'Giorni di Tuono',1990,1,1);
