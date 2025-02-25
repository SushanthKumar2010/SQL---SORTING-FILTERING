CREATE TABLE IF NOT EXISTS DEPARTMENT(
EMPLOYEE_ID TEXT,
NAME TEXT,
DEPT_ID TEXT,
MANAGER_ID TEXT,
SALARY REAL 
);

INSERT INTO DEPARTMENT(EMPLOYEE_ID,NAME,DEPT_ID,MANAGER_ID,SALARY) VALUES
('100','STEVEN KING','90','100',24000),
('101','NEENA','90','100',14000),
('102','LEX','90','102',34000),
('103','BRUCE LEE','60','103',44000),
('104','DIANA WILLS','60','103',20000),
('105','VALLI PATOR','50','103',64000),
('106','LUV HAMI','60','102',2000),
('107','DAVID AUSTIN','90','100',4000);

SELECT DEPT_ID AS "Department Code",
COUNT(*) AS "NO. of Employees"
FROM DEPARTMENT
GROUP BY DEPT_ID;

SELECT DEPT_ID, SUM(SALARY)
FROM DEPARTMENT
GROUP BY DEPT_ID;

SELECT DEPT_ID AS "Department Code",
COUNT(*) AS "NO. of Employees",
SUM(SALARY) AS "Total Salary"
FROM DEPARTMENT
GROUP BY DEPT_ID;

SELECT DEPT_ID AS "Department Code",
SUM(SALARY) AS "Total Salary"
FROM DEPARTMENT
WHERE MANAGER_ID = '103'
GROUP BY DEPT_ID;

SELECT DEPT_ID, COUNT(*) AS "NO. of Employees"
FROM DEPARTMENT
GROUP BY DEPT_ID
HAVING COUNT(*) > 2;