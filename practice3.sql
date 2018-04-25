#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
select avg(salary),companyId from Employee group by companyId;

select companyName,avg(salary) from Employee as a  
inner join Company as c on a.companyId = c.id
group by a.companyId 
order by avg(salary) desc limit 1;
