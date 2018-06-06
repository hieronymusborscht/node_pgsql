
drop table if exists monsters;

CREATE TABLE monsters(
  m_id serial primary key,
  name varchar(50) not null default '',
  personality varchar(50) not null default ''
);

drop table if exists habitat;

CREATE TABLE habitat (
  h_id serial primary key,
  name varchar(50) not null default '',
  climate varchar(50) not null default '',
  temperature int not null default '0'
);

drop table if exists lives;

CREATE TABLE lives (
  l_id serial primary key,
  monster varchar(50) not null default '',
 habitat varchar(50) not null default ''
);




ALTER TABLE lives ADD CONSTRAINT monster_habitat UNIQUE (monster, habitat);

insert into monsters( name,personality) values
  ('Fluffy', 'aggressive'),
  ('Noodles', 'impatient'),
  ('Francis', 'affectionate');

  insert into habitat (name, climate, temperature)
values
('desert','dry',100),
('forrest','haunted',70),
('mountain','icy',30);

insert into lives(monster,habitat)
  values
  ('Fluffy','desert'),
  ('Noodles','forrest'),
  ('Francis', 'mountain');
