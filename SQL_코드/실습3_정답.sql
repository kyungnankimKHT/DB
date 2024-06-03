--사원  = EMPLOYEE2
--부서 = DEPARTMENT2

--INSERT 
--1. 사원 번호 '223', 이름 '김영수', 주민등록번호 '850101-1234567', 이메일 'kim_ys@or.kr', 전화번호 '01012345678', 부서 코드 'D1', 직무 코드 'J4', 급여 수준 'S2', 급여 3500000, 보너스율 0.1, 매니저 ID '200', 입사일 '15/06/20', 퇴사여부 'N'.
INSERT 
INTO EMPLOYEE2 (EMP_ID, emp_name,EMP_NO, EMAIL, PHONE, DEPT_CODE, JOB_CODE, SAL_LEVEL, salary, bonus, manager_id,hire_date, ent_date,ent_yn)
VALUES ('223','김영수', '850101-1234567', 'kim_ys@or.kr',  '01012345678', 'D1',  'J4','S2',3500000,  0.1,  '200', TO_DATE('2015-06-20', 'YYYY-MM-DD'), NULL, 'N');

--2. 부서 코드 'D10', 부서명 '연구개발부', 지역 코드 'L6'.
INSERT 
INTO department2
VALUES ('D10','연구개발부', 'L6');
/*

오류 보고 -
SQL 오류: ORA-12899: value too large for column "KH_T"."DEPARTMENT2"."DEPT_ID" (actual: 3, maximum: 2)

컬럼의 최대 크기가 2BYTE로 영어나 숫자로 2글자까지만 가능하지만
3글자를 작성하려 했기 때문에 에러 발생
-> department2 테이블에서  "DEPT_ID" 에 해당하는 컬럼의 크기를
        2에서 3으로 늘려주거나
        VARCHAR2로 변경해서 255까지 늘려주는 방법이 존재 ->VARCHAR2 알아서 공간크기를 조정
        CHAR 의 경우 공간 크기를 조정하지 못하기 때문에 처음부터 크기를 잘 선택
*/

--UPDATE 실습
--1. 직원 사원 번호 '200'의 이메일을 'sun_di_updated@or.kr'로, 전화번호를 '01012345678'로 변경
SELECT * 
FROM EMPLOYEE2 
WHERE EMP_ID = '200';

UPDATE EMPLOYEE2
SET EMAIL = 'sun_di_updated@or.kr',
        PHONE =  '01012345678'
WHERE EMP_ID = '200';

--2. 부서 코드 'D1'에 속한 모든 직원의 급여를 10% 인상하고, 보너스율을 0.05 증가시키기
SELECT * FROM EMPLOYEE2
WHERE DEPT_CODE = 'D1';

UPDATE EMPLOYEE2
SET SALARY = SALARY * 1.10,
    BONUS = BONUS + 0.05
    WHERE DEPT_CODE = 'D1';























