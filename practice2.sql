# 取得每个company中最高薪水的人员名字
select a.name from Employee as a where salary = (select max(b.salary) from Employee as b where a.companyId = b.companyId);

# 输出结果包含公司名称和人员名称：companyName name

select a.name,c.companyName from Employee as a inner join Company as c on a.companyId = c.id where salary = 
(select max(b.salary) from Employee as b where a.companyId = b.companyId);