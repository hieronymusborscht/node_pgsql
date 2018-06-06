
drop table if exists wizards;

CREATE TABLE wizards(
  w_id serial primary key,
  name varchar(50) not null default '',
  power varchar(256) not null default ''
);

drop table if exists elves;
CREATE TABLE elves (
  e_id serial primary key,
  name varchar(50)  not null default '',
  speed real not null default '0.0'
);




drop table if exists hobbits;
create table hobbits(
  name varchar(50) not null default '',
  personality varchar(50) not null default ''
);



insert into wizards (name, power)
  values
  ('Gandalf','fireworks'),
  ('Sauron', 'rings'),
  ('Sauroman', 'betrayal');


insert into elves (name, speed)
  values
  ('Legolas', 10),
  ('Arwen', 9),
  ('Elrond', 5);

  insert into hobbits (name, personality)
    values
    ('Frodo', 'Careful'),
    ('Sam', 'Brave'),
    ('Bilbo', 'Greedy');




    drop table if exists allies;
    create table allies(
      wizard varchar(50 ) not null default '',
      elf varchar(50) not null default ''
    );

    insert into allies (wizard,elf) values

      ('Gandalf','Legolas'),
      ('Gandalf', 'Arwen'),
      ('Sauruman', 'Elrond'),
      ('Sauruman','Legolas');

      drop table if exists gaurdians;
      create table gaurdians(
        elf varchar(50) not null default '',
        hobbit varchar(50) not null default ''
      );
      insert into  gaurdians
        (elf, hobbit)  values
        ('Legolas', 'Frodo'),
        ('Arwen', 'Sam'),
        ('Elrond','Bilbo') ;
