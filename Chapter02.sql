# Chapter 2: Sorting Query Results

# 2.1: Returning Query Results in a Specified Order

SELECT ENAME,JOB,SAL
FROM emp
WHERE DEPTNO=10
ORDER BY SAL ASC ;

SELECT ENAME,JOB,SAL
FROM emp
WHERE DEPTNO=10
ORDER BY SAL DESC ;

SELECT ENAME,JOB,SAL
FROM emp
WHERE DEPTNO=10
ORDER BY 3 DESC ;

# 2.2: Sorting by Multiple Fields

SELECT EMPNO,DEPTNO,SAL,ENAME,JOB
FROM emp
ORDER BY DEPTNO,SAL DESC
# 2.3: Sorting by Substrings

SELECT JOB, substr(job,length(job)-1)
FROM emp

SELECT ENAME,JOB
FROM emp
ORDER BY SUBSTR(JOB,LENGTH(JOB)-1);
# 2.4: Sorting Mixed Alphanumeric Data

#DROP VIEW V
CREATE VIEW V
AS
    SELECT CONCAT(ENAME,' ',DEPTNO) AS DATA
    FROM emp;

SELECT * FROM V

SELECT DATA
FROM V
ORDER BY
# 2.5: Dealing with Nulls When Sorting

# 2.6: Sorting on Data-Dependent Key