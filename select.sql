--SELECTS ALL THE COLOUMN *

SELECT * FROM employee; --fectches entire data

SELECT * FROM employee WHERE officeCode = 1; --fetches filtered data where matches where condition

SELECT * FROM employee WHERE officeCode = 1 ORDER BY firstName; -- order by sorts the by firstName (default asc)

--SELECTS CERTAIN COLUMNS
SELECT firstName, lastName FROM employee;
