create table loginInfo (
	id varchar2(20) primary key,
	password varchar2(20) not null
);

select * from LOGININFO;
insert into loginInfo values('limp', '8624');

create table insaTable (
	emp_info varchar2(30),
	name varchar2(20) not null,
	lang_skill varchar2(500),
	grade varchar2(20),
	reference varchar2(500),
	field_exp varchar2(500),
	address varchar2(250),
	phone varchar2(20) not null,
	email varchar2(50) primary key,
	degree varchar2(50),
	kosa_yn varchar2(20),
	certif_yn varchar2(20),
	dob date
);
drop table insaTable;
select * from insaTable;