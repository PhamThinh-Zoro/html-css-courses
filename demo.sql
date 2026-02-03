create table connguoi(
    ten varchar(30) primary key,
    tuoi int
);
create table cauthu(
    ten varchar(30) primary key,
    luong int
);
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'cauthu';

alter table cauthu
drop column luong;

alter table cauthu
rename column wc to euro;

alter table cauthu
alter column euro type int
using euro::int;

alter table cauthu
alter column euro drop not null;

alter table cauthu
add constraint fk
check(euro>0)

select * from cauthu;

