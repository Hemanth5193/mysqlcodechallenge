use practicedb;
CREATE TABLE Customer_Details(
	Customer_id VARCHAR(10) PRIMARY KEY,
    Customer_Name VARCHAR(30),
    Phone_No VARCHAR(10),
    City VARCHAR(20)
);

CREATE TABLE Purchase_Details(
	Purchase_id INT(5) PRIMARY KEY,
    Customer_id VARCHAR(10),
    FOREIGN KEY (Customer_id)REFERENCES Customer_Details(Customer_id),
    Pet_id VARCHAR(5),
    Purchase_Date DATE,
    Total_Amount_Paid DOUBLE(8,2)
);

INSERT INTO Customer_Details VALUES('3','Kevin','9000000000','Kochi');
INSERT INTO Purchase_Details VALUES('6','3','6','2022-10-23',10000.00);
INSERT INTO Customer_Details VALUES('5','Kevin','9000000000','lab');
INSERT INTO Purchase_Details VALUES('4','5','7','2022-10-23',11000.00);


SELECT * FROM Customer_Details;
SELECT * FROM Purchase_Details;


SELECT q1.Customer_id,Customer_Details.Customer_Name,q1.No_of_Pets 
FROM (SELECT * FROM (SELECT Customer_id, COUNT(Customer_id) AS 'No_of_Pets' FROM Purchase_Details GROUP BY Customer_id) q2 WHERE No_of_Pets > 1) q1
JOIN Customer_Details 
WHERE q1.Customer_id = Customer_Details.Customer_id ORDER BY q1.Customer_id ASC;