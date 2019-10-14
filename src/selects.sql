use luk_odu;

# SELECT * FROM employee where age between 25 and 50 and age <> 31 and department in ('news','marketing');

# SELECT * from employee where salary>3000 and age in ('31','32','66');

# SELECT  email, contract_expiration from employee where contract_expiration like ('2019%');

# SELECT * from employee order by email asc;  sortowanie

# SELECT * from employee limit 4, 2;

# SELECT count(*) as unic_dep_count from (select distinct department from employee) alias_jakas_nazwa;   ->distince to unikaty<-

# SELECT count(*) as concractet_employee from employee where contract_expiration is not null;

# SELECT email,
#        CASE
#            WHEN contract_expiration IS NOT NULL then 'B2B'
#            ELSE 'UOP' END AS employ_type,
#        CASE
#            WHEN age < 30 THEN 'junior'
#            WHEN age BETWEEN 30 AND 50 THEN 'mid'
#            ELSE 'Senior' END AS clasyfication,
#        age,
#        CASE WHEN age < 30 THEN salary / 1.15
#             ELSE salary / 1.25 END AS net_salary,
#        salary AS brt_salary
# FROM employee
# ORDER BY age ASC;

# SELECT email FROM employee WHERE salary = (SELECT min(salary) as min_salary FROM employee);

# SELECT sum(salary)FROM employee;

# select avg(salary) FROM employee where department = 'news';

# SELECT department,sum(salary) AS total_salary,
#        avg(salary)as avg_salary
# FROM employee WHERE age>30
# GROUP BY department
# HAVING total_salary>10000;

SELECT contract_expiration, sum(salary)
FROM employee
GROUP BY contract_expiration;

SELECT e.employ_type,
       sum(e.salary)FROM
    (SELECT CASE WHEN contract_expiration IS NOT NULL THEN 'kontrakt'
    ELSE 'stali' END AS employ_type,
    salary FROM employee) e
GROUP BY e.employ_type

# SELECT department,count(*) AS employ_count from employee GROUP BY department ORDER BY employ_count desc ;



# select * from address;

# select firstname, lastname, street, city from employee,address where employee.id = address.employee_id; nie optymalne

# select e.firstname, e.lastname, a.street, a.city from employee e inner join address a on e.id = a.employee_id;
#
# CREATE DATABASE jak_jan;
#
# use jak_jan;

