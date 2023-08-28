--boardT 테이블 생성

create table boardT (
    bno number(38) primary key -- 게시판번호 PK
    , bname varchar2(100) not null 
    , btitle varchar2(200) not null
    , bcont varchar(4000) not null
    , bhit number(38) default 0 -- 기본값 0
    , bdate date default sysdate -- 기본값 현재날짜
);

SELECT * from boardT order by bno desc;

--bno_seq25 sequence
create sequence bno_seq25 
start with 1 --1부터시작
INCREMENT by 1 --1씩증가
nocache --임시메모리를 사용하지 않겠다는 의미
nocycle; --시퀀스 최대값 도달시 최소값 1부터 다시 반복안함

--bno_seq25 시퀀스 다음 번호 확인
select bno_seq25.nextval from dual;

commit;