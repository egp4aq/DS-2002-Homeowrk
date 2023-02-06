# Elizabeth Peterson
# DS 2002 HW 1

# Question 1: count the number of employees
Select count(*) from employees;

# Question 2: output current name of all the departments
Select dept_name from departments;

# Question 3: how many employees are in Finance?
Select * from departments
where dept_name = 'Finance';

# Question 4: how many women work in development?
#Select gender as 'gender', dept_name as 'department name'
#from employees, departments
#where employees.emp_no = dept_emp.emp_no = .dept_no;
 
# Question 5: what is the top salary in the company?
Select salary from salaries 
order by salary desc
limit 1;

# Question 6: what is the average salary for Marketing?
Select avg(salary) from salaries
UNION
Select dept_name from departments
where dept_name = 'Marketing';

# Question 7: What is the lowest salary in the company, who is it and what is their title and department?
#Select employees.first_name, employees.last_name, departments.dept_name from employees, departments
#where salaries.salary = MIN(salary);

# Question 8: Who is the oldest person at the company and what is their age?
Select birth_date from employees
order by birth_date desc
limit 1;

