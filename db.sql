DROP DATABASE IF EXISTS test_devFolio;
CREATE DATABASE test_devFolio;
USE test_devFolio;

# 회원 테이블 생성
CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    loginId CHAR(30) NOT NULL,
    loginPw VARCHAR(100) NOT NULL,
    `name` CHAR(30) NOT NULL,
    nickname CHAR(30) NOT NULL,
    email CHAR(100) NOT NULL,
    cellphoneNo CHAR(20) NOT NULL
);

# 로그인 ID로 검색했을 때
ALTER TABLE `member` ADD UNIQUE INDEX (`loginId`);

# 회원, 테스트 데이터 생성
INSERT INTO `member`
SET regDate = NOW(),
    updateDate = NOW(),
    loginId = "test1",
    loginPw = "test1",
    `name` = "test1",
    nickname = "테스트1",
    email = "dbrudrjf21@gmail.com",
    cellphoneNo = "01012341234";