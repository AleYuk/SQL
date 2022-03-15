-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select e.employee_name, s.monthly_salary 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select e.employee_name, s.monthly_salary 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where monthly_salary < 2000

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_id, e.employee_name, es.salary_id
from employees e 
right join employee_salary es on e.id = es.employee_id 
where employee_name is null

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_id, e.employee_name, es.salary_id, monthly_salary 
from employees e 
right join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id
where employee_name is null and monthly_salary < 2000

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, salary_id 
from employees e 
left join employee_salary es on e.id = es.employee_id 
where salary_id is null

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where role_name like '%Java developer%'

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where role_name like '%Python%'

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where role_name like '%QA%'

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where role_name like '%Manual QA%'

-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where role_name like '%Automation QA%'

-- 12. ������� ����� � �������� Junior ������������
select employee_name, monthly_salary 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Junior%'

-- 13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Middle%'

-- 14. ������� ����� � �������� Senior ������������
select employee_name, monthly_salary 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Senior%'

-- 15. ������� �������� Java �������������
select monthly_salary, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Java developer%'

-- 16. ������� �������� Python �������������
select monthly_salary, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Python%'

 -- 17. ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Junior Python%'

 -- 18. ������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Junior JavaScript%'

 -- 19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Senior Java%'

 -- 20. ������� �������� Junior QA ���������
select employee_name, monthly_salary, role_name 
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Junior QA%'

 -- 21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary) as average_junior_salary
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Junior%'

 -- 22. ������� ����� ������� JS �������������
select sum(monthly_salary) as sum_js_developer_salary
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%JavaS%'

 -- 23. ������� ����������� �� QA ���������
select min(monthly_salary) as min_js_qa_salary
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%QA%'

 -- 24. ������� ������������ �� QA ���������
select max(monthly_salary) as max_js_qa_salary
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%QA%'

 -- 25. ������� ���������� QA ���������
select count(re.employee_id) as qty_qa_specialist
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%QA%'

 -- 26. ������� ���������� Middle ������������.
select count(re.employee_id) as qty_middle_specialist
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%Middle%'

 -- 27. ������� ���������� �������������
select count(re.employee_id) as qty_developers
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%developer%'

 -- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) as sum_developer_salary
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where role_name like '%dev%'

 -- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary  
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
order by monthly_salary 

 -- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary  
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where monthly_salary between 1700 and 2300
order by monthly_salary 

 -- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary  
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where monthly_salary < 2300
order by monthly_salary 

 -- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary  
from roles_employee re 
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
join employee_salary es on re.employee_id = es.employee_id
join salary s on es.salary_id = s.id  
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary 


