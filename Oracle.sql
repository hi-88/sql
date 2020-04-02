
select * from jobs where min_salary>10000;

select * from employees where TO_CHAR(hire_date,'YYYY') BETWEEN 2002 AND 2005 ORDER BY hire_date;

select first_name,hire_date from employees WHERE job_id IN('IT_PROG','SA_MAN');

select * FROM employees where hire_date>'01-JAN-2008';

select TO_CHAR(hire_date,'MM'),count(*) from employees where TO_CHAR(hire_date,'YYYY')=TO_CHAR(SYSDATE,'YYYY')GROUP BY TO_CHAR(hire_date,'MM');

select job_id,avg(salary) from employees GROUP BY job_id HAVING avg(salary)>10000

update employees set salary=8000 where employee_id=115 and salary<6000;

select DISTINCT department_id FROM employees group by department_id,manager_id having count(employee_id)>5;

select * from departments where manager_id in(select employee_id from employees where first_name='SMITH');

select first_name,job_title,start_date,end_date from job_history jhis join jobs jo using(job_id) join employees emp on (jhis.employee_id=emp.employee_id)
where emp.commission_pct is null;