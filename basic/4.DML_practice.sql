--author 데이터 5개 추가
address는 데이터 넣지 말것

--post 데이터 5개 추가
2개는 저자가 있는 데이터
2개는 저자가 비어있는 데이터> author_id에 NOT NULL 조건없다는 사실 확인
1개는 저자가 author테이블에 없는 데이터 추가 -> 에러 발생확인하기





--author 데이터 중 id 4인 데이터를 email을 abc@naver.com, name을 abc로 변경
update author set email='abc@naver.comm', name='abc' where id=4;


--post에 글쓴적이 없는 author 데이터 1개 삭제

--post에 글쓴적이 있는 author 데이터 1개 삭제 -> 에러 -> 조치후 삭제
-- 방법1.
delete from post where author_id = 1;
delete from author where id = 2;
--방법2.
update post set author_id = null where author_id =2;
delete from author where id = 2;

