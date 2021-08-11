/*#1.List customer's experience and education_level where customer's age is greater than 30..
#Explanation 
#In my select statement  I have selected cust_id,age,experience,education_level 
#from customer_details and then further used a where clause for getting the results based on the specified condition..

/*select cust_id,age,experience,education_level
from customer_details
WHERE age >30
order by age desc;*/

/*2.#find out customer who's income is more than 180.

#Explanation 
#In my select statement I have selected age, education_level,income then further joined it to customer_income table 
#using joins. Inner join are basically used to get records which are common in both tables and further joined it to 
#income and then used where clause for getting customers where income is greater than 180.

/*select  age, education_level, income
from customer_details
inner join customer_income
on customer_details.cust_id=customer_income.cust_id
inner join income
on income.income_id=customer_income.income_id
where income>180;*/

/*3.#find out customer who r interedsted in personal loan and having family size=3, and higher educated. 

#Explanation
#In my select statement I have selected education_level,family,personal_loan from customer_details and then used a where clause for filtering the records bsed on 
#condition.

/*Select education_level,family,personal_loan
from customer_details 
where
family = 3 and education_level= 'advance' and personal_loan= 'Yes';*/

/*4.#information about customer age, education level and income is greater than 100.

/*select  age, education_level, income
from customer_details
inner join customer_income
on customer_details.cust_id=customer_income.cust_id
inner join income
on income.income_id=customer_income.income_id
where income>100;*/

/*#5.find out the customer who's mortgage is greater than 0 and ccavg is greater than 1.

#Explanation
#In my select statement I have selected age, education_level,cust_id, family, ccavg, mortgage from customer_details 
#and then joined with mortgage table on mortgage_id and then used where clause for filtering results.

/*select  age, education_level,cust_id, family, ccavg, mortgage
from customer_details
inner join mortgage
on customer_details.mortgage_id=mortgage.mortgage_id
where mortgage>'0' and ccavg>1 ;*/
