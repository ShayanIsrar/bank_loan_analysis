select * from bank_loan_data limit 5;

select count(id) as Total_Loan_Applications from bank_loan_data;

SELECT COUNT(id) AS MTD_Total_Loan_Applications 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 12 
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;

SELECT COUNT(id) AS PMTD_Total_Loan_Applications 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 11 
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;

select sum(loan_amount) as MTD_Total_funded_Amount from bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 12
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;

select sum(loan_amount) as PMTD_Total_funded_Amount from bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 11
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;

select sum(total_payment) as MTD_Total_Amount_Recieved from bank_loan_data
where extract(month from TO_DATE(issue_date, 'DD-MM-YYYY')) = 12
and extract(year from TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021


select sum(total_payment) as PMTD_Total_Amount_Recieved from bank_loan_data
where extract(month from TO_DATE(issue_date, 'DD-MM-YYYY')) = 11
and extract(year from TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021

select ROUND(avg(int_rate), 4) * 100 as MTD_Avg_Interest_Rate from bank_loan_data
where extract(month from TO_DATE(issue_date, 'DD-MM-YYYY')) = 12
and extract(year from TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021


select ROUND(avg(int_rate), 4) * 100 as PMTD_Avg_Interest_Rate from bank_loan_data
where extract(month from TO_DATE(issue_date, 'DD-MM-YYYY')) = 11
and extract(year from TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021

select round(avg(dti), 4) * 100 as MTD_Avg_DTI from bank_loan_data
where extract(month from TO_DATE(issue_date, 'DD-MM-YYYY')) = 12
and extract(year from TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021

select round(avg(dti), 4) * 100 as PMTD_Avg_DTI from bank_loan_data
where extract(month from TO_DATE(issue_date, 'DD-MM-YYYY')) = 11
and extract(year from TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021

select (count(case when loan_status = 'Fully Paid' OR loan_status = 'Current' then id end) * 100)
	/
	count(id) as Good_Loan_Percentage
	from bank_loan_data

select count(id) as Good_Loan_Applications from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'


select sum(loan_amount) as Good_Loan_Funded_Amount from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'

select sum(total_payment) as Good_Loan_Recieved_Amount from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'


select (count(case when loan_status = 'Charged Off' then id end) * 100)
	/
	count(id) as Bad_Loan_Percentage
	from bank_loan_data

select count(id) as Bad_Loan_Applications from bank_loan_data
where loan_status = 'Charged Off'

select sum(loan_amount) as Bad_Loan_Funded_Amount from bank_loan_data
where loan_status = 'Charged Off'

select sum(total_payment) as Bad_Loan_Amount_Recieved from bank_loan_data
where loan_status = 'Charged Off'


select
	loan_status,
	count(id) as Total_Loan_Applications,
	sum(total_payment) as Total_Amount_Received,
	sum(loan_amount) as Total_Funded_Amount,
	avg(int_rate * 100) as Interest_Rate,
	avg(dti *100) as DTI
from
	bank_loan_data
group by
	loan_status


select
	loan_status,
	sum(total_payment) as MTD_Total_Amount_Received,
	sum(loan_amount) as MTD_Total_Funded_Amount
from
	bank_loan_data
where
	extract(month from TO_DATE(issue_date, 'DD-MM-YYYY')) = 11
group by
	loan_status


-- select
-- 	DATENAME(month, issue_date),
-- 	count(id) as Total_Loan_Applications,
-- 	sum(total_payment) as Total_Amount_Received,
-- 	sum(loan_amount) as Total_Funded_Amount
-- from
-- 	bank_loan_data
-- group by
-- 	DATENAME(month, issue_date)
-- order by
-- 	DATENAME(month, issue_date)
-- this is the mentor code, but in this the date issue because of postgres..



-- -- Set DateStyle for this session
-- SET datestyle = 'ISO, DMY';

-- -- Now convert all date columns
-- ALTER TABLE public.bank_loan_data
--     ALTER COLUMN issue_date TYPE DATE 
--         USING TO_DATE(issue_date, 'DD-MM-YYYY'),
--     ALTER COLUMN last_credit_pull_date TYPE DATE 
--         USING TO_DATE(last_credit_pull_date, 'DD-MM-YYYY'),
--     ALTER COLUMN last_payment_date TYPE DATE 
--         USING TO_DATE(last_payment_date, 'DD-MM-YYYY'),
--     ALTER COLUMN next_payment_date TYPE DATE 
--         USING TO_DATE(next_payment_date, 'DD-MM-YYYY');

SELECT
    TO_CHAR(issue_date::DATE, 'Month') AS Month,
    COUNT(id) AS Total_Loan_Applications,
    SUM(total_payment) AS Total_Amount_Received,
    SUM(loan_amount) AS Total_Funded_Amount
FROM
    bank_loan_data
GROUP BY
    TO_CHAR(issue_date::DATE, 'Month'),
    EXTRACT(MONTH FROM issue_date::DATE)
ORDER BY
    EXTRACT(MONTH FROM issue_date::DATE)


SELECT
    address_state,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM
    bank_loan_data
GROUP BY
    address_state
ORDER BY
    Total_Loan_Applications desc




SELECT
    term,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM
    bank_loan_data
GROUP BY
    term
ORDER BY
    term 



SELECT
    emp_length,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM
    bank_loan_data
GROUP BY
    emp_length
ORDER BY
    count(id) desc


SELECT
    purpose,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM
    bank_loan_data
GROUP BY
    purpose
ORDER BY
    count(id) desc


SELECT
    home_ownership,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM
    bank_loan_data
-- where grade = 'A' and address_state = 'CA' 
GROUP BY
    home_ownership
ORDER BY
    count(id) desc




