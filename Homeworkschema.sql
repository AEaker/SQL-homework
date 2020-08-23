create table titles(
	title_id char(5) not null,
	title varchar(25) not null,
	primary key (title_id)
);

create table departments(
	dept_no char(4) not null,
	dept_name varchar(35) not null,
	primary key(dept_no)
);


create table employees (
	emp_no int not null,
	emp_title char(5) not null,
	birth_date date not null,
	first_name varchar(25) not null,
	last_name varchar(25) not null,
	sex char(1) not null,
	hire_date date not null,
	primary key (emp_no),
	foreign key (emp_title) references titles(title_id)
	);

create table salaries (
	emp_no int not null,
	salary int not null,
	foreign key(emp_no) references employees(emp_no));

create table dept_emp (
	emp_no int not null,
	dept_no char(4) not null,
	foreign key(emp_no) references employees(emp_no),
	foreign key(dept_no) references departments(dept_no)
	);

create table dept_manager (
	dept_no char(4) not null,
	emp_no int not null, 
	foreign key(dept_no) references departments(dept_no),
	foreign key(emp_no) references employees(emp_no)
	);

