# Chapter 1: Retrieving Records

# 1.1: Retrieving All Rows and Columns from a Table
SELECT *
FROM emp;

SELECT EMPNO,ENAME,JOB,SAL,MGR,HIREDATE,COMM,DEPTNO
FROM emp;

# 1.2: Retrieving a Subset of Rows from a Table

SELECT *
FROM emp
WHERE DEPTNO=10;

# 1.3: Finding Rows that Satisfy Multiple Conditions

SELECT *
FROM emp
WHERE DEPTNO=10
OR COMM IS NOT NULL
OR DEPTNO=20 AND SAL<=2000;

SELECT *
FROM emp
WHERE (DEPTNO=10
    OR COMM IS NOT NULL
    OR SAL<=2000)
AND DEPTNO=20;

# 1.4: Retrieving a Subset of Columns from a Table

SELECT ENAME,DEPTNO,SAL
FROM emp;


# 1.5: Providing Meaningful Names for Columns

SELECT SAL as Salary, COMM as Commission
FROM emp;

# 1.6: Referencing an Aliased Column in the WHERE Clause
SELECT * FROM(
                 SELECT SAL AS Salary, COMM AS Comission
                 FROM emp
             )x
WHERE Salary<5000;

# 1.7: Concatenating Column Values
SELECT concat(ENAME,' WORKS AS A ',JOB) AS msg
FROM emp
WHERE DEPTNO=10;
# 1.8: Using Conditional Logic in SELECT Statement

SELECT ENAME,SAL,
       case when SAL<=2000 then 'UNDERPAID'
            when SAL>=4000 then 'OVERPAID'
            else 'OK'
    end AS status
FROM emp

# 1.9: Limiting the number of rows returned

SELECT *
FROM emp
LIMIT 5;

# 1.10: Returning n Random Records from a table

SELECT ENAME,JOB
FROM emp
ORDER BY rand() LIMIT 5;

# 1.11: Finding Null Values

SELECT *
FROM emp
WHERE COMM IS NULL;

# 1.12: Transforming Nulls into Real Values

SELECT coalesce(COMM,0)
FROM emp;
# 1.13: Searching for Patterns

SELECT DEPTNO,ENAME,JOB
FROM emp
WHERE DEPTNO in (10,20)
AND (ENAME LIKE '%I%' OR JOB LIKE '%ER');