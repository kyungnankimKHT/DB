/******
DML : 데이터 조작 언어
테이블에 값을 삽입하거나 수정하거나 삭제하는 구문

INSERT : 삽입

UPDATE : 수정

DELETE : 삭제

한 후 에 반드시 COMMIT ROLLBACK 진행할 것

COMMIT ROLLBACK  - 팀원이나 다른사람과 상의 후 진행
개발 연습이기 때문에 단독으로 진행해도 좋음
******/

-- INSERT UPDATE DELETE 를 위해 연습용 테이블 만들어줄 것
CREATE TABLE EMPLOYEE2 AS SELECT * FROM EMPLOYEE;
SELECT * FROM EMPLOYEE2;

CREATE TABLE DEPARTMENT2 AS SELECT * FROM department;
SELECT * FROM department2;

------------------------------------------
--1. INSERT

-- 테이블에 새로운 행을 추가하는 구문

-- 1) INSERT INTO 테이블명 VALUES(데이터, 데이터, ...);
--    테이블에 모든 컬럼에 대한 값을 INSERT 할 때 사용
--    INSERT 하고자 하는 컬럼이 모든 컬럼인 경우 컬럼명 생략 가능
--    단, 컬럼의 순서를 지켜서 VALUES 값에 값을 기입해야함

--모두 INSERT 해줄 것이기 때문에 컬럼명 생략
--                                                      EMP_ID   EMP_NAME     EMP_NO                 EMAIL  PHONE          DEPT_CODE  JOB_CODE  SAL_LEVEL  SALAY   BONUS MANAGER_ID HIREDATE  ENT_DATE ENT_YN
INSERT INTO EMPLOYEE2 VALUES(       800,     '동그라미', '870814-2123456',    'KIM@KH.KR'         , '01076996190',            'D1',      'J7',         'S3',            4300000 , 0.2,        200,             SYSDATE, NULL, 'N'); 

COMMIT;
















