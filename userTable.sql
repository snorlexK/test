drop table user if exists;

create table user(
	userId varchar(20) not null primary key,
	userPwd varchar(20) not null,
	userPwdQ varchar(100) not null,
	userPwdA varchar(50) not null,
	userName varchar(30) not null,
	userEmail varchar(50) not null,
	userPhone1 char(3),
	userPhone2 char(4),
	userPhone3 char(4),
	userSMS char(1),
	userAddr varchar(50),
	userBirthYear int,
	userBirthMonth int,
	userBirthDay int
);

desc user;

select * from user;

show variables like 'c%';