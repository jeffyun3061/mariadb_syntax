-- 데이터베이스 생성
CREATE DATABASE board;
-- 데이터베이스 선택
USE board;
-- 테이블 신규 생성
CREATE TABLE author(id Int, name VARCHAR(255),
email VARCHAR(255), password VARCHAR(255), test1 VARCHAR(255), PRIMARY KEY (id));
--테이블 목록조회
SHoW TABLES;
--테이블 컬럼조회
DEScribe author;
--post 테이블 신규 생성
CREATE TABLE posts(id INT PRIMARY KEY, title VARCHAR(255), content VARCHAR(255), author_id INT, FOREIGN KEY(author_id) REFERENCES author(id));

--테이블 컬럼상세조회
SHOW FULL COLUMNS FROM author;

--테이블 생성문 조회
SHOW CREATE TABLE posts;
CREATE TABLE `posts` (
--    `id` int(11) NOT NULL,
--    `title` varchar(255) DEFAULT NULL,
--    `content` varchar(255) DEFAULT NULL,
--    `author_id` int(11) DEFAULT NULL,
--    PRIMARY KEY (`id`),
--    KEY `author_id` (`author_id`),
--    CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
--  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

--테이블 제약조건 조회
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'POSTS';

--테이블 index 조회
SHOW INDEX FROM posts;

-- ALTER문
-- 테이블 이름 변경
ALTER TABLE posts RENAME post;
-- 테이블 컬럼추가]
ALTER TABLE author ADD COLUMN role VARCHAR(50);
--테이블 컬럼 변경
ALTER TABLE author MODIFY COLUMN name VARCHAR(100) NOT NULL;
-- 컬럼 이름변경
ALTER TABLE post CHANGE COLUMN content contents VARCHAR(255);
-- 컬럼 삭제
DROP TABLE autuor DROP COLUMN test1


alter table post modify column contents varchar(3000) not NULL;

alter table author add column address Varchar(255);

drop table post;  


show create table posts;

확인

날리고

CREATE TABLE `post` (
   `id` int(11) NOT NULL,
   `title` varchar(255) DEFAULT NULL,
   `contents` varchar(3000) NOT NULL,
   `author_id` int(11) DEFAULT NULL,
   PRIMARY KEY (`id`),
   KEY `author_id` (`author_id`),
   CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

