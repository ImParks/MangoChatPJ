CREATE DATABASE chat DEFAULT CHARACTER SET UTF8MB4;
use chat;

CREATE TABLE login(
no int primary key auto_increment, # 유저 고유 넘버
id char(30) unique, # 유저 아이디
pw char(30) , # 유저 비밀번호
name char(30), # 유저 닉네임
name_num int default 1 # 유저 태그번호(중복일떄 1씩 증가)
);
drop table login;
SELECT * FROM login;


CREATE TABLE chatroom( 
no int primary key auto_increment, # 채팅방 고유번호
cat_name char(50), # 채팅방 이름
open int default 0, # 0일때 오픈방 1일때 닫힌방
member int default 10 # 맴버 최대 인원수
);

CREATE TABLE chatjoin( # 아이디 랑 채팅방이랑 링크하는 테이블
id_no int, 
room_no int
);


select * from chatroom where login_num = no

CREATE TABLE chatting( # 이거는 계속 늘어나게 해야함. 채팅방 채팅로그
# 채팅방 고유번호, 위에 챗룸과 동일해야함
# 채팅친사람 고유번호 --> 채팅 삭제 및 수정을 위해 필요
# 채팅친 사람의 닉네임
# 채팅
# 시간 <-- 한달이 지나면 자동으로 글이 삭제 되게 만듦
 
);

