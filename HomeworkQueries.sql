
'List the following details of each employee: employee number, last name, first name, sex, and salary.'
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on employees.emp_no=salaries.emp_no;

'List first name, last name, and hire date for employees who were hired in 1986.'
select first_name, last_name, employees.hire_date
from employees
where employees.hire_date >= '1986-01-01' and
	employees.hire_date <= '1986-12-31';

'List the manager of each department with the following information: department number, department name, the manager''s employee number, last name, first name.'

select e.first_name, e.last_name, e.emp_no,
d.dept_name, de.dept_no
from employees as e
inner join dept_emp as de on e.emp_no=de.emp_no
inner join departments as d on de.dept_no=d.dept_no
where e.emp_title = 'm0001';


'List the department of each employee with the following information: employee number, last name, first name, and department name.'
select e.emp_no, e.first_name, e.last_name, d.dept_name
from employees as e
inner join dept_emp as de on e.emp_no=de.emp_no
inner join departments as d on de.dept_no=d.dept_no;

'List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."'
select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules'  and
e.last_name like 'B%';

'List all employees in the Sales department, including their employee number, last name, first name, and department name.'
select e.emp_no, e.first_name, e.last_name, d.dept_name
from employees as e
inner join dept_emp as de on e.emp_no=de.emp_no
inner join departments as d on d.dept_no=de.dept_no
where d.dept_name = 'Sales';

'List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.'
select e.emp_no, e.first_name, e.last_name, d.dept_name
from employees as e
inner join dept_emp as de on e.emp_no=de.emp_no
inner join departments as d on d.dept_no=de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';


'In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.'
select e.last_name, count(e.last_name)
from employees as e
group by e.last_name
order by count(e.last_name) desc;
