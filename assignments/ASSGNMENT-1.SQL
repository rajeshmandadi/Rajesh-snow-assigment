SELECT * FROM EMPLOYEES

select first_name, last_name from EMPLOYEES

1) Display the
details of all employees 

SQL :Select * from employees
 
2) Display the depart information from
department table 

SQL: SELECT * FROM DEPARTMENTS
 
3) Display the name and job for all the
employees 

SQL: SELECT E.FIRST_NAME,
       J.JOB_TITLE 
       FROM EMPLOYEES E
       INNER JOIN JOBS AS J ON E.JOB_ID = J.JOB_ID


4) Display the name and salary  for all the employees 

SQL,SELECT CONCAT(FIRST_NAME, LAST_NAME) AS NAME, SALARY FROM EMPLOYEES



 5) Display the employee no and
totalsalary  for all the employees 
SQL:SELECT EMPLOYEE_ID, SALARY FROM EMPLOYEES


 



6) Display the employee name and annual
salary for all employees. 
SQL:SELECT FIRST_NAME AS NAME, 
SALARY,(SALARY*12) AS ANNUAL_SALARY FROM EMPLOYEES


7)Display the names of all the employees
who are working in depart number 10.
 

SQL:SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS NAME FROM EMPLOYEES
WHERE DEPARTMENT_ID= '10' 





8) Display the names of all the employees
who are working as clerks and  drawing
a salary more than 3000. 
sql:SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS "NAME",
       E.SALARY,
       J.JOB_TITLE AS "TITLE"
       FROM EMPLOYEES E
       INNER JOIN JOBS AS J ON E.JOB_ID = J.JOB_ID
    AND SALARY>3000
    AND JOB_TITLE LIKE'%Clerk'


9) Display the employee number and
name  who are earning comman salalry
SQL:SELECT EMPLOYEE_ID,CONCAT(FIRST_NAME,LAST_NAME) AS "NAME", SALARY FROM EMPLOYEES
  WHERE SALARY IN (
    SELECT SALARY
    FROM EMPLOYEES
    GROUP BY SALARY
    HAVING COUNT(*) > 1
)

10) Display the employee number and
name  who do not earn any common salary
SQL.SELECT EMPLOYEE_ID,CONCAT(FIRST_NAME,LAST_NAME) AS "NAME", SALARY FROM EMPLOYEES
    WHERE SALARY IN (
    SELECT SALARY
    FROM EMPLOYEES
    GROUP BY SALARY
    HAVING COUNT(*) = 1
)