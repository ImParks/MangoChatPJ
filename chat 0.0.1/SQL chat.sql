CREATE DATABASE chat DEFAULT CHARACTER SET UTF8MB4;
use chat;

CREATE TABLE login(
no int primary key auto_increment,
id char(30) unique,
pw char(30) ,
name char(30),
name_num char(10)

);

CREATE TABLE chatroom(
no int primary key auto_increment,
cat_name char(50),
open int default 0, # 0일때 오픈방 1일때 닫힌방
member int default 10
);

CREATE TABLE chatjoin(
id_no int,
room_no int
);


select * from chatroom where login_num = no

CREATE TABLE chatting( # 이거는 계속 늘어나게 해야함.
번호
아이디
채팅
시간

);

