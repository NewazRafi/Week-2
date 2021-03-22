Activity 01:

SELECT lname, salary/4 "Weekly Salary", dno
FROM employee


Activity 02:

(a) :

SELECT S.fname, S.lname 
FROM employee E, employee S
WHERE E.superssn = S.ssn AND E.fname = 'Franklin' AND E.lname = 'Wong'


(b) :

SELECT E.lname, E.fname 
FROM employee E, dependent D
WHERE E.ssn = D.essn AND E.sex = 'F' AND E.fname = D.dependent_name


(c) :

SELECT emp.lname,  dep.mgrstartdate, d.dependent_name
FROM department dep, employee emp, dependent d
WHERE dep.mgrssn = emp.ssn AND emp.ssn = d.essn


(d) :

SELECT E.lname, E.fname, D.dname, P.pname, W.hours 
FROM department D, employee E, works_on W, project P
WHERE D.dnumber = E.dno AND E.ssn = W.essn AND W.pno = P.pnumber


Activity 03:

SELECT last_name, Employee_Id, Hire_Date 
FROM emps
WHERE hire_date BETWEEN '1998-02-20' AND '1998-05-01' ORDER BY hire_date ASC

Activity 04:

SELECT last_name, department_id 
FROM emps 
WHERE department_id IN(20,50) 
ORDER BY `last_name`  ASC