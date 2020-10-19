--------------------------------------------------------
--  파일이 생성됨 - 목요일-10월-15-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "JSP"."MEMBER" 
   (	"USERID" VARCHAR2(30 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"USERNAME" VARCHAR2(15 BYTE), 
	"GENDER" CHAR(1 BYTE), 
	"AGE" NUMBER, 
	"EMAIL" VARCHAR2(30 BYTE), 
	"PHONE" VARCHAR2(14 BYTE), 
	"ADDRESS" VARCHAR2(300 BYTE), 
	"HOBBY" VARCHAR2(300 BYTE), 
	"ENROLLDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "JSP"."NOTICE" 
   (	"NNO" NUMBER, 
	"NTITLE" VARCHAR2(300 BYTE), 
	"NCONTENT" VARCHAR2(2000 BYTE), 
	"NWRITER" VARCHAR2(30 BYTE), 
	"NCOUNT" NUMBER, 
	"NDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JSP.MEMBER
SET DEFINE OFF;
Insert into JSP.MEMBER (USERID,PASSWORD,USERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('admin','1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==','관리자','M',10,'admin@example.com',null,null,null,to_date('20/10/06','RR/MM/DD'));
Insert into JSP.MEMBER (USERID,PASSWORD,USERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('user01','02DeqFdlQnpEbQRZqnvpfK7a9sO9iISEV7Hzxntivto23dJ/i16UMur0ACYxwsfAxFwzfn5yarbQnsbAtkCJAg==','홍길동','M',15,'user01@example.com','011-1111-2222','06253, 서울 강남구 역삼동 838, OO동','등산, 블록쌓기, 유튜브보기',to_date('20/10/06','RR/MM/DD'));
Insert into JSP.MEMBER (USERID,PASSWORD,USERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('user02','ybuT5RE3Qb/bE69MynKRp21UqUH7gwxtO8uOGrOsKqgPt95nPzymK/si9YTYCIxP0CfaqS2StvpiQ0W5UwyCVg==','동방삭','F',5,'user02@example.com','010-1234-5467','서울시 강남구','드라마, 분유먹기, 유튜브보기',to_date('20/10/07','RR/MM/DD'));
Insert into JSP.MEMBER (USERID,PASSWORD,USERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('user05','1Kq7ah9oGObMip407Jocgb3og45it48imRhxh6iM3Z0cOUQaRzie2GOdwtqy8hDr+0D1f1iCbS6n/qoMj6/m6Q==','고길동','M',10,'user05@example.com','017-1233-4566','05200, 서울 강동구 고덕동 2-2, test','드라마, 블록쌓기, 유튜브보기',to_date('20/10/13','RR/MM/DD'));
Insert into JSP.MEMBER (USERID,PASSWORD,USERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('user03','iplxewLli7qPQF+vVHtB4loDo/E9Zw9efFh7eEh1NI+MrrMXTVqtmYEe/HBLnduhQ2VTnkV+2AkVdHiNnxR8mg==','잭키슨','M',6,'user03@example.com','010-5678-5678','서울시 강남구 역삼동','등산, 복습, 분유먹기',to_date('20/10/08','RR/MM/DD'));
Insert into JSP.MEMBER (USERID,PASSWORD,USERNAME,GENDER,AGE,EMAIL,PHONE,ADDRESS,HOBBY,ENROLLDATE) values ('user04','Z0U+iqhgJz33L+h4J/Jk7/gJY7g6fOsxJArSl02c5fjgD/58eBUJQcSpWzNxpOtMVwLF7m0OKnOr1GHnE6vIrg==','배성쟈','M',6,'user04@example.com','010-1234-5678','서울시 강남구','등산, 복습, 분유먹기',to_date('20/10/13','RR/MM/DD'));
REM INSERTING into JSP.NOTICE
SET DEFINE OFF;
Insert into JSP.NOTICE (NNO,NTITLE,NCONTENT,NWRITER,NCOUNT,NDATE) values (1,'[사이트 오픈] JSP 세상 환영인사','안녕하세요. JSP World 사이트가 개장했습니다.
많이 이용해 주시고, 가입 부탁드립니다.','admin',0,to_date('80/01/14','RR/MM/DD'));
Insert into JSP.NOTICE (NNO,NTITLE,NCONTENT,NWRITER,NCOUNT,NDATE) values (2,'[정기점검] 정기 점검 안내','사이트가 정기 점검 중입니다.
이용에 불편을 드려 대단히 죄송합니다.','admin',0,to_date('20/01/08','RR/MM/DD'));
Insert into JSP.NOTICE (NNO,NTITLE,NCONTENT,NWRITER,NCOUNT,NDATE) values (3,'[긴급점검] 긴급 점검 안내','사이트가 문제가 생겨 긴급 점검을 실시합니다.
이용에 불편을 드려 죄송합니다.
빠른 시일 내에 복구하도록 하겠습니다.','admin',0,to_date('20/01/09','RR/MM/DD'));
Insert into JSP.NOTICE (NNO,NTITLE,NCONTENT,NWRITER,NCOUNT,NDATE) values (4,'[연장점검] 연장 점검 안내','긴급 점검 중 맷돼지가 전봇대를 들이받아
전봇대 쓰러졌습니다. 이로 인해 연장 점검에
들어가게 되었습니다. 이용에 불편을 드려 죄송합니다.

감사합니다.','admin',0,to_date('20/01/10','RR/MM/DD'));
Insert into JSP.NOTICE (NNO,NTITLE,NCONTENT,NWRITER,NCOUNT,NDATE) values (5,'[임시점검] 임시점검 안내','최근 고라니가 전선을 갉아먹는 사태가 잇따라 
발생하고 있습니다. 이에 따라 본 사이트도
고라니 울타리를 설치하기 위한 점검 시간을 안내하게 되었습니다. 앞으로도 많이 애용해주시기 바랍니다.

감사합니다.','admin',0,to_date('20/01/12','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index SYS_C007067
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."SYS_C007067" ON "JSP"."MEMBER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007068
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."SYS_C007068" ON "JSP"."MEMBER" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007070
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."SYS_C007070" ON "JSP"."NOTICE" ("NNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "JSP"."MEMBER" ADD UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."MEMBER" ADD PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."MEMBER" ADD CHECK (GENDER IN ('M','F')) ENABLE;
  ALTER TABLE "JSP"."MEMBER" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "JSP"."MEMBER" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "JSP"."NOTICE" ADD PRIMARY KEY ("NNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JSP"."NOTICE" MODIFY ("NTITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "JSP"."NOTICE" ADD FOREIGN KEY ("NWRITER")
	  REFERENCES "JSP"."MEMBER" ("USERID") ENABLE;
