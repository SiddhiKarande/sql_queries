--SELECTS ALL THE COLOUMN *

SELECT * FROM employee; --fectches entire data

SELECT * FROM employee WHERE officeCode = 1; --fetches filtered data where matches where condition

SELECT * FROM employee WHERE officeCode = 1 ORDER BY firstName; -- order by sorts the by firstName (default asc)

--SELECTS CERTAIN COLUMNS
SELECT firstName, lastName FROM employee;

--clauses are optional
SELECT (firstname + lastName) AS "Name", salary FROM employee;

--where clause 
SELECT * FROM employee WHERE salary >= 500000;

--logical operators 
--AND OR NOT
--AND has higher prefrence 
SELECT * FROM employee WHERE (salary >= 500000 AND age<= 23);

--IN operator
 SELECT * FROM employee WHERE city = "Pune" OR city = "Mumbai";
 SELECT * FROM employee WHERE city IN ("Pune", "Mumbai");

 --BETWEEN operator
 SELECT * FROM employee WHERE salary >= 500000 AND salary <= 1000000;
 SELECT * FROM employee WHERE salary BETWEEN 500000 AND 1000000;
  --dates
 SELECT * FROM employee WHERE joiningDate BETWEEN "2001-09-01" AND "2005-09-01";

 --LIKE operator
 SELECT * FROM employee WHERE firstName LIKE "%Amit%"; --name that includes amit
 SELECT * FROM employee WHERE firstName LIKE "%A"; --name that ENDS with A
 SELECT * FROM employee WHERE firstName LIKE "A%"; --name that STARTS with A

--REGEXP operator
SELECT * FROM employee WHERE designation REGEXP 'Developer'; --fecteches all employees whose designation has developer init
SELECT * FROM employee WHERE designation REGEXP '^Developer'; --fecteches all employees whose designation starts with developer
SELECT * FROM employee WHERE designation REGEXP 'Developer$'; --fecteches all employees whose designation ends with developer
SELECT * FROM employee WHERE designation REGEXP '^Developer'; --fecteches all employees whose designation starts with developer

--find out employee whose phone number ends with 55
SELECT * FROM employee WHERE phoneNo LIKE '55%'
