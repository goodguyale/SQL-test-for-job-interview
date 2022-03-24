CREATE DATABASE namedb;

USE namedb;

CREATE TABLE sales (
Ultimate_Parent_ID VARCHAR(100),
Account_ID VARCHAR(100),
Account_Geo VARCHAR(20),
Account_Region VARCHAR(20),
Opportunity_ID VARCHAR(100),
Opportunity_Type VARCHAR(50),
Account_Rep_Owner_ID VARCHAR(100),
Opportunity_Stage VARCHAR(50),
Opportunity_Close_Date DATE,
Opportunity_Amount MEDIUMINT,
Ultimate_Company_Annual_Revenue MEDIUMINT,
Ultimate_Company_num_of_Employees MEDIUMINT,
Segment VARCHAR(50)
);

INSERT INTO sales (
Ultimate_Parent_ID,
Account_ID,
Account_Geo,
Account_Region,
Opportunity_ID,
Opportunity_Type,
Account_Rep_Owner_ID,
Opportunity_Stage,
Opportunity_Close_Date,
Opportunity_Amount,
Ultimate_Company_Annual_Revenue,
Ultimate_Company_num_of_Employees,
Segment)
VALUES ('0012K00001ajtCuQAI', '0012K00001ajtCuQAI', 'EMEA III', 'EMEA', '0062K00000e8ahgQAA', 'New Customer', '005A0000008PVwUIAW', 'Closed Lost', '2019-9-12', '6600', '40000', '2', 'Inside Sales'),
('0012K00001ajteZQAQ', '0012K00001ajteZQAQ', 'EMEA Cloud', 'EMEA', '0062K00000jGJNmQAO', 'New Customer', '0052K000009fp1tQAA', 'Discovery', '2020-11-30', '400', '0', '0', 'Inside Sales'),
('0012K00001ajtJ2QAI', '0012K00001ajtJ2QAI', 'EMEA Cloud', 'EMEA', '0062K00000eQZ2jQAG', 'New Customer', '0052K000009HAXXQA4', 'Closed Lost', '2020-5-25', '11085', '5500000', '11', 'Inside Sales'),
('0012K00001ajviHQAQ', '0012K00001ajviHQAQ', 'Austin', 'Americas', '0062K00000ePVfBQAW', 'New Customer', '005A0000008PiHPIA0', 'Closed Lost', '2019-9-13', '9000', '0', '0', 'Inside Sales'),
('0012K00001ak6HnQAI', '0012K00001ak6HnQAI', 'APAC Cloud', 'APAC', '0062K00000ju00BQAQ', 'New Customer', '005A0000008taziIAA', 'Business Case', '2021-1-31', '1000', '0', '0', 'Inside Sales'),
('0012K00001ak8WrQAI', '001A000001KmU9AIAV', 'Austin V', 'Americas', '006A000000ae5D2IAI', 'New Customer', '0052K000009fkcLQAQ', 'Closed Won', '2018-9-12', '18500', '310000', '40', 'Inside Sales'),
('0012K00001ak8WrQAI', '0012K00001ak8WrQAI', 'Austin V', 'Americas', '0062K00000jG9KTQA0', 'Renewal', '0052K000009H0pvQAC', 'Closed Won', '2021-9-30', '25000', '310000', '40', 'Inside Sales'),
('0012K00001ak8WrQAI', '0012K00001ak7GnQXX', 'Austin V', 'Americas', '0062K00000je5KTYYT', 'Renewal', '0052K000009H0pvQAC', 'Closed Won', '2020-9-30', '15000', '310000', '40', 'Inside Sales'),
('0012K00001ak9EZQAY', '0012K00001ak9EZQAY', 'Austin Cloud I', 'Americas', '0062K00000ioacBQAQ', 'Renewal', '0052K000009tjeJQAQ', 'Research', '2021-6-30', '71250', '0', '0', 'Inside Sales'),
('0012K00001ak9EZQAY', '0012K00001ak9EZQAY', 'Austin Cloud I', 'Americas', '0062K00000ju00BQAQ', 'New Customer', '0052K000009tjeJQAQ', 'Closed Won', '2020-1-1', '10000', '0', '0', 'Inside Sales'),
('0012K00001ak9F1QAT', '0012K00001ak3GGQRV', 'EMEA III', 'EMEA', '006A000000aq4Y2IRW', 'Renewal', '005A0000008PVwUIAW', 'Closed Won', '2019-12-9', '15000', '1200000', '70', 'Inside Sales');

SELECT Ultimate_Parent_ID, Opportunity_ID, Opportunity_Type, Opportunity_Close_Date, MAX(Opportunity_Amount) 
FROM sales 
WHERE Opportunity_Stage='Closed Won' 
GROUP BY concat(Ultimate_Parent_ID, '-', Opportunity_Type) 
ORDER BY concat(Ultimate_Parent_ID, '-', Opportunity_Type) 