USE dwm_case_study;
create TABLE Customer
(
Customer_id int,
Name varchar(255),
Address varchar(255),
city varchar(255)
);

INSERT INTO Customer(Customer_id,Name,Address,city)
VALUES(('001','Sharad','104-Krishna Marg','Delhi'),
        ('002','Shyam','304-Chandavarkar Road','Mumbai'),
        ('003','Pallav','720-Madhavi Nagar','Hyderabad'),
        ('004','Prasad','172-B-Ramnagar','Nagpur'),
        ('005','Geetha','312-A-21-Bhandarkar Road','Nasik'));
