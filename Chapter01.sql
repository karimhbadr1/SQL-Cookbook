# Chapter 1: Retrieving Records

# 1.1: Retrieving All Rows and Columns from a Table
SELECT *
FROM emp

SELECT EMPNO,ENAME,JOB,SAL,MGR,HIREDATE,COMM,DEPTNO
FROM emp;

# 1.2: Retrieving a Subset of Rows from a Table

SELECT *
FROM emp
WHERE DEPTNO=10

# 1.3: Finding Rows that Satisfy Multiple Conditions

SELECT *
FROM emp
WHERE DEPTNO=10
OR COMM IS NOT NULL
OR DEPTNO=20 AND SAL<=2000

SELECT *
FROM emp
WHERE (DEPTNO=10
    OR COMM IS NOT NULL
    OR SAL<=2000)
AND DEPTNO=20

# 1.4: Retrieving a Subset of Columns from a Table

SELECT ENAME,DEPTNO,SAL
FROM emp;


# 1.5: Providing Meaningful Names for Columns

SELECT SAL as Salary, COMM as Commission
FROM emp;
