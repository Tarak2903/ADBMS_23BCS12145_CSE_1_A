CREATE TABLE Employee(
Emp_ID INT identity(1,1) PRIMARY KEY,
Ename varchar(30) NOT NULL,
Department varchar(20),
ManagerID INT,
foreign key (ManagerID) references Employee(Emp_ID)
);
insert into employee(Ename,Department,ManagerID) values
('Alice','HR',null),
('Bob','Finance',1),
('Charlie','IT',1),
('David','Finance',2),
('Eve','IT',3),
('Frank','HR',1)

select E1.EName as [Employee_Name], E2.EName as [Manager_Name], E1.Department as [Emp_Department], E2.Department as [Manager_Dept]
from Employee as E1
left outer join Employee as E2 
on E1.ManagerID=E2.Emp_ID; 
