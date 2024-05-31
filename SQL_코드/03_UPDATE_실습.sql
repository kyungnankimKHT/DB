/***  UPDATE 실습  ***/

-- D1 인사관리부 -> 인사팀으로 변경
UPDATE department2
SET dept_title = ' 인사팀'
WHERE DEPT_ID = 'D1';

SELECT * FROM department2
WHERE DEPT_ID = 'D1';

-- D3 마케팅부    -> 마케팅팀 변경
UPDATE department2
SET DEPT_TITLE = '마케팅팀'
WHERE DEPT_ID = 'D3';

SELECT * FROM department2
WHERE DEPT_ID = 'D3';
-- D8 기술지원부  -> 기술지원팀 변경
UPDATE department2
SET DEPT_TITLE = '기술지원팀'
WHERE DEPT_ID = 'D8';

SELECT * FROM department2
WHERE dept_id = 'D8';

SELECT * FROM department2;

-- 수정된 내용을 저장하길 원한다면 COMMIT
-- 저장하지 않길 원한다면 ROLLBACK;
COMMIT;

--EMPLOYEE2 테이블에서 BONUS를 받지 않은 사원의
-- BONUS를 0.1로 변경
UPDATE EMPLOYEE2
SET BONUS = 0.1
WHERE BONUS IS NULL;

--변경 후 EMP_NAME, BONUS 모두 조회
SELECT EMP_NAME, BONUS
FROM EMPLOYEE2;

ROLLBACK;



-- 모든 직원의 기본 급여 인상 EMPLOYEE2
UPDATE EMPLOYEE2
SET SALARY = SALARY * 1.1;

SELECT EMP_NAME, SALARY
FROM EMPLOYEE2;

--D9 부서의 모든 직원의 보너스율 0.4로 수정 EMPLOYEE2
UPDATE EMPLOYEE2
SET BONUS = 0.4
WHERE DEPT_CODE = 'D9';

SELECT DEPT_CODE, BONUS FROM EMPLOYEE2;

-- DEPT_CODE 가 NULL 인 직원은 D3부서로 이동
UPDATE EMPLOYEE2
SET DEPT_CODE = 'D3'
WHERE DEPT_CODE IS NULL;

SELECT * FROM EMPLOYEE2;
--특정 입사일 (2000-01-01) 이후 입사한 직원의 급여 수정 
-- HRIE_DATE
UPDATE EMPLOYEE2
SET SALARY = SALARY + 1000000
WHERE hire_date > TO_DATE('2000-01-01', 'YYYY-MM-DD');


-- 1997-09-12 에 입사한 직원 퇴사처리 
-- ENY_YN
UPDATE EMPLOYEE2
SET ent_yn = 'Y'
WHERE HIRE_DATE = TO_DATE('1997-09-12', 'YYYY-MM-DD');

ROLLBACK; --UPDATE 모두 취소


select emp_name, email from employee2;
-- 특정 도메인 주소 변경
UPDATE EMPLOYEE2
SET EMAIL = REPLACE(EMAIL, 'or.kr', 'kh.kh');

select emp_name, email from employee2;

--핸드폰번호 employee2 에서 010뒤에 -붙여서 변경
--like --> 무조건 맨 앞이 010 이어야하고 중간에 오는 010 변경 x
update employee2
set phone = replace(phone, '010', '010-')
where phone like '010%';

rollback;
select * from employee2;

--특정 입사일을 가진 직원의 입사일 변경
--hire-date 1999-09-09 입사한직원 -> 2000-01-02





