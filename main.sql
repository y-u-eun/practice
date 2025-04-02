# use information_schema;
# select * from engines;
# select support from engines;
# select support, xa from engines where support = 'NO';
# select count(support) from engines where support = 'NO';
# select * from engines where support = 'NO';
# select * from engines where support = 'NO' and engine like '%A%';
# select * from engines where support = 'NO' and engine like 'A_';

use mycompiler;
show tables;

create table block(name char(5), age int);
# desc block;

# add
insert into block(name, age) values('jung', 37);
insert into block(name, age) values('kim', 25);
insert into block(name, age) values('kim', 30);
insert into block(name, age) values('lee', 30);
insert into block(name, age) values('choi', 20);
select * from block;

# select * from block where age >= 25 and name like '%i%';

# remove
# delete from block where name = 'kim';
delete from block where name = 'kim' and age < 30;
# truncate block;
select * from block;

# updata
update block set age = 30 where name = 'choi';
select * from block;

update block set age = 50 where name like '%i%';
select * from block;

drop table block;
show tables;

drop database mycompiler;