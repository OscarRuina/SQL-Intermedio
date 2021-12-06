#1
create table persona(
	id integer not null,
    nombre varchar(45)
);

#2
insert into persona values(4,"Javier");
insert into persona values(3,"Nicolas");
insert into persona values(1,"Franco");
insert into persona values(5,"Pedro");

#3
select * from persona;

#4
alter table persona add constraint pk_id primary key(id);

#6
select * from persona;