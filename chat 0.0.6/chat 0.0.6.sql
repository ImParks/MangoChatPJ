
CREATE DATABASE chat DEFAULT CHARACTER SET UTF8MB4;
use chat;	
DROP DATABASE chat;
CREATE TABLE login(
`userNo` int PRIMARY KEY AUTO_INCREMENT, # 유저 고유 넘버
`id` char(30) UNIQUE, # 유저 아이디
`pw` char(30) , # 유저 비밀번호
`userName` char(30), # 유저 닉네임
`userTag` int DEFAULT 1, # 유저 태그번호(중복일떄 1씩 증가
`createdAt` timestamp DEFAULT current_timestamp,
`updatedAt` timestamp DEFAULT current_timestamp
);
select * from login;
CREATE TABLE `chat_room`( 
`roomNo` int primary key auto_increment, # 채팅방 고유번호
`bossNo` int not null,
`roomName` char(50) not null, # 채팅방 이름
`roomStat` int default 0 not null, # 0일때 오픈방 1일때 닫힌방
`userMax` int default 10 not null, # 맴버 최대 인원수
`createdAt` timestamp default current_timestamp,
`updatedAt` timestamp default current_timestamp
);
CREATE TABLE `chat_join`( # 아이디 랑 채팅방이랑 링크하는 테이블
`userNo` int, 
`roomNo` int,
`createdAt` datetime not null default now(),
`updatedAt` datetime not null default now() on update now()
);

CREATE TABLE `chatting`(
 `chatNo` int primary key auto_increment,
 `userNo` int,
 `roomNo` int,
 `chat` char(50),
 time datetime not null default now()
);

drop table chatting;
SELECT * FROM chatting;
insert into chatting(userNo,roomNo,chat) value (1,1,'안녕');
delete from chatting1 where chatNo = 24;
	

CREATE TABLE `Friends_List`(
`my_user_no` int,
`freind_user_no` int,
`freind` int default 0
);

Create table `inviting_user`(
`invitveNo` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`roomNo` int NOT NULL,
`userNo` int NOT NULL,
`createdAt` datetime not null default now()
);

CREATE TABLE `invite_room_user`(
`no` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`roomNo` int NOT NULL,
`userNo` int NOT NULL,
`createdAt` timestamp default current_timestamp,
`updatedAt` timestamp default current_timestamp
);

CREATE TABLE `chat_data`(
`chatNo` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
`roomNo` int NOT NULL,
`userNo` int NOT NULL,
`chatContent` text NOT NULL,
`createdAt` timestamp default current_timestamp,
`updatedAt` timestamp default current_timestamp
);
