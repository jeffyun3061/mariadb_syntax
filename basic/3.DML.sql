-- insert, select, updte, delete

insert into author (id, name, emai,) values(1, 'kim', 'abc@naver.com');
insert into author (id, name, email) values(1, 'kim', 'abc@naver.com');
insert into author (id, name, email) values(1, 'kim', 'abc@naver.com');
insert into author (id, name, email) values(1, 'kim', 'abc@naver.com');
insert into author (id, name, email) values(1, 'kim', 'abc@naver.com');

insert into post(id,title, contents, author_id) values(1, 'hello1', 'hello is ..', 2)
insert into post(id,title, contents, author_id) values(2, 'hello2', 'hello is ..', 2)
insert into post(id,title, contents, values) values(3, 'hello3', 'hello3 is ..', 2)
insert into post(id,title, contents, values) values(4, 'hello4', 'hello4 is ..', 2)
insert into post(id,title, contents, author_id) values(5, 'hello5', 'hello5 is ..', 10)


author 데이터 중 id가 4인 데이터를 email을 abc@naverc.com, name을 abc로 변경

update author set email = 'abc@naver.com', name ='abc' where id = 4  

delete from author where author_id=5;

select * from author;
select name, email from author;
select * from author where id = 1;
select * from 