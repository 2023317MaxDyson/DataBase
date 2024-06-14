
USE StationeryRetailer;


-- Query 1 

-- Write a SELECT statement that returns all the columns from the Employees table.
 -- An employee should have a salary greater than 69000,  a super_id of 3, and the
 -- salary should be in descending order. 
 
SELECT * from Employees
where super_ID = 3 and salary > 69000  Order By salary DESC;


-- Query 2

-- Write a query that returns these columns emp_id , cilent ID,  first_name, last_name  birth_date and total_sales. Join the Employee table with 
-- the Works_With table to retreve the data from these colunmns. Retrieve only 7 rows for the columns. 

SELECT top 7 Employees.emp_id, Works_With.cilentID, Employees.first_name, Employees.last_name, Employees.birth_date,   Works_With.total_sales
from Employees INNER JOIN Works_With ON Employees.emp_id = Works_With.empID;


-- Query 3  

-- Write a query that will insert 1 row in the client table. Return the following result for the new row:
-- cilent_id: The next cilent ID
-- cilent_name: Dunmore Highschool 
-- branch_id: 3

-- Also update the client table that returns the following result for the updated row:
-- client_name: Scranton Newspaper
-- branch_id: 2



Select client_id, client_name,branch_id from client;


UPDATE client 
SET client_name = 'Scranton Newspaper', branch_id = 2
WHERE client_id = 402;



--INSERT INTO client(client_id,client_name, branch_id)
--Values(407,'Dunmore Highschool',3);



-- Query 4

-- Delete the Inserted row from query 3;

--DELETE FROM client 
-- where client_id = 407;


-- Query 5

-- Write a query that returns these columns emp_id, fullname, birth_date, sex, salary, and status. 
-- Return the status column with these values:
-- If Null = THE MANAGER
-- Not Null = Worker


-- Salary should not be less than 57,000.


SELECT emp_id, first_name + ', ' + last_name as fullname, birth_date, sex, salary, 
CASE WHEN branch_id is NULL THEN 'THE MANAGER'
ELSE 'Worker'
End AS status 
from Employees
where not Salary < 57000 ;


-- Query 6

-- Write a query that matches the client with their branch_id in the branch_supplier table. 
-- Use a full join statement that retrieves the data from the branch_supplier table.
-- Return the following columns branch_id, client_name, supplier_name, supply_type.
-- Order the client names in an ascending order.  


SELECT  client.branch_id, client.client_name, branch_supplier.supplier_name, branch_supplier.supply_type 
from client 
FULL OUTER JOIN  branch_supplier ON client.branch_id= branch_supplier.branch_id
ORDER BY client.client_name ASC;


-- Query 7

-- Write a query that returns all the tables in the branches table. 
-- The mgr_start_date should be between 1993-01-01 to 2007-1-1

SELECT * from Branches
where mgr_start_date BETWEEN '1993-01-01' AND '2007-1-1';



-- Query 8

--Write a query returns the sum and average for the salary. As well as, use count to specify how many rows are in the employees table.

SELECT COUNT(*) as numberofrows, SUM(salary) as totalsalary,  AVG(salary)  as averagesalary from Employees;



-- Query 9

-- Write a query that returns these columns in the client table :

-- cilent_id
-- cilent_name
-- branch_id

-- and the cilent_name should end with C 

SELECT branch_id, client_name,  branch_id from client
 where client_name LIKE '%C';



-- Query 10

-- Use left join to link with the Works_With table and the employees table together.
-- Return these columns for both of these tables:

-- emp_id
-- first_name
-- last_name
-- birth_date
-- sex
-- salary 
-- branch_id 
--cilentID
-- total_sales

SELECT DISTINCT employees.first_name, employees.last_name,  employees.birth_date,  employees.sex, employees.salary , employees.branch_id ,
Works_With.cilentID, Works_With.total_sales from Employees 
LEFT JOIN Works_With ON Employees.emp_id = Works_With.empID
where branch_id is not null and cilentID is not null and total_sales is not null ;




