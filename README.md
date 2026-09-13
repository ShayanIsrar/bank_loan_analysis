# 🏦 Bank Loan Analysis Dashboard


---

## 📊 Project Overview
This project analyzes bank loan data to monitor lending performance, loan quality, and repayment trends. The dashboard provides a comprehensive view of loan applications, funded amounts, and repayment status using **PostgreSQL** for data storage and querying, and **Power BI** for visualization.

---

## 🛠️ Tools & Technologies
- **Database:** PostgreSQL 18
- **Visualization:** Power BI
- **Data Source:** Financial Loan CSV Dataset
- **Query Language:** SQL (PostgreSQL)

---

## 📁 Project Structure
```
bank-loan-analysis/
│
├── screenshots/
│   ├── summary.png
│   ├── overview.png
│   └── details.png
│
├── queries/
│   └── bank_loan_queries.sql
│
├── data/
│   └── financial_loan.csv
│
└── README.md
```

---

## 📌 Dashboard Pages

| Page | Description |
|---|---|
| 📈 Summary | High level KPIs, good vs bad loans, loan status breakdown |
| 🗺️ Overview | Trends by month, state, term, purpose, employment, home ownership |
| 🔎 Details | Individual loan records with full attributes |

---

## 📈 Summary Dashboard


### 🔑 Key KPIs

| Metric | Value | MTD | MoM |
|---|---|---|---|
| Total Loan Applications | 39K | 4K | 6.9% |
| Total Funded Amount | $436M | $54M | 13.0% |
| Total Amount Received | $473M | $58M | 15.8% |
| Avg Interest Rate | 12.0% | 12.4% | 3.5% |
| Avg DTI | 13.3% | 13.7% | 2.7% |

---

### ✅ Good Loan vs ❌ Bad Loan

| | Good Loan | Bad Loan |
|---|---|---|
| % of Total | 86.2% | 13.8% |
| Applications | 33.2K | 5.3K |
| Funded Amount | $370.2M | $65.5M |
| Amount Received | $435.8M | $37.3M |

> **86.2%** of all issued loans are classified as good loans (Fully Paid or Current), while **13.8%** are bad loans (Charged Off).

---

### 📋 Loan Status Breakdown

| Loan Status | Applications | Funded Amount | Amount Received | Avg Interest Rate | Avg DTI |
|---|---|---|---|---|---|
| Current | 1,098 | $18.9M | $24.2M | 15.1% | 14.7% |
| Charged Off | 5,333 | $65.5M | $37.3M | 13.9% | 14.0% |
| Fully Paid | 32,145 | $351.4M | $411.6M | 11.6% | 13.2% |
| **Grand Total** | **38,576** | **$435.8M** | **$473.1M** | **12.0%** | **13.3%** |

### 🔍 Filters Available
- **State** — Filter by US state
- **Grade** — Filter by loan grade
- **Purpose** — Filter by loan purpose

---

## 🗺️ Overview Dashboard


The Overview page provides a detailed breakdown of loan applications across multiple dimensions including time, geography, purpose, and borrower profile.

---

### 📅 Total Loan Applications by Month

| Month | Applications |
|---|---|
| January | 2.3K |
| February | 2.3K |
| March | 2.6K |
| April | 2.8K |
| May | 2.9K |
| June | 3.2K |
| July | 3.4K |
| August | 3.4K |
| September | 3.5K |
| October | 3.8K |
| November | 4.0K |
| December | 4.3K |

> Loan applications show a **consistent upward trend** throughout the year, peaking in **December at 4.3K** — indicating strong year-end demand.

---

### 🗺️ Total Loan Applications by State
- Loan applications are spread across the **entire United States**
- **California** and other large states show the highest concentration of applications
- Geographic distribution helps identify high-demand regions for lending

---

### ⏱️ Total Loan Applications by Term

| Term | Applications | Percentage |
|---|---|---|
| 36 Months | 10K | 26.8% |
| 60 Months | 28K | 73.2% |

> **73.2%** of borrowers prefer longer **60-month terms**, suggesting borrowers favor lower monthly installments over shorter loan duration.

---

### 👷 Total Loan Applications by Employee Length

| Employment Length | Applications |
|---|---|
| 10+ years | 8.9K |
| < 1 year | 4.6K |
| 2 years | 4.4K |
| 3 years | 4.1K |
| 4 years | 3.4K |
| 5 years | 3.3K |
| 1 year | 3.2K |
| 6 years | 2.2K |
| 7 years | 1.8K |
| 8 years | 1.5K |
| 9 years | 1.3K |

> Borrowers with **10+ years of employment** are the largest group at 8.9K, indicating that experienced employees are the most active loan applicants.

---

### 🎯 Total Loan Applications by Purpose

| Purpose | Applications |
|---|---|
| Debt Consolidation | 18.2K |
| Credit Card | 5.0K |
| Other | 3.8K |
| Home Improvement | 2.9K |
| Major Purchase | 2.1K |
| Small Business | 1.8K |
| Car | 1.5K |
| Wedding | 0.9K |
| Medical | 0.7K |
| Moving | 0.6K |
| House | 0.4K |
| Vacation | 0.4K |
| Educational | 0.3K |
| Renewable Energy | 0.1K |

> **Debt Consolidation** is the dominant loan purpose at 18.2K applications (47% of total), followed by **Credit Card** refinancing at 5.0K — suggesting most borrowers use loans to manage existing debt.

---

### 🏠 Total Loan Applications by Home Ownership

| Home Ownership | Applications |
|---|---|
| Rent | 18K |
| Mortgage | 17K |
| Own | 3K (approx) |

> Renters and mortgage holders make up the **vast majority** of loan applicants, with renters slightly leading — suggesting that non-outright homeowners have higher borrowing needs.

### 🔍 Filters Available
- **Select Measure** — Switch between different KPI metrics
- **State** — Filter by US state
- **Grade** — Filter by loan grade
- **Good v Bad Loan** — Filter by loan quality

---

## 🔎 Details Dashboard


The Details page provides a **granular loan-level view** of all individual loan records, allowing deep inspection of each loan's attributes including purpose, home ownership, grade, interest rate, installment, and repayment amounts.

---

### 📋 Loan Detail Table Columns

| Column | Description |
|---|---|
| **ID** | Unique loan identifier |
| **Purpose** | Reason for the loan (e.g. Debt Consolidation, Credit Card) |
| **Home Ownership** | Borrower's housing status (RENT, OWN, MORTGAGE) |
| **Grade** | Loan risk grade assigned by the bank (A to G) |
| **Sub Grade** | More granular risk classification (e.g. B4, C2) |
| **Issue Date** | Date the loan was issued |
| **Funded Amount** | Total amount funded by the bank |
| **Int Rate** | Interest rate applied to the loan |
| **Installment** | Monthly installment amount |
| **Amount Received** | Total amount received from borrower |

---

### 📝 Sample Loan Records

| ID | Purpose | Home Ownership | Grade | Sub Grade | Issue Date | Funded Amount | Int Rate | Installment | Amount Received |
|---|---|---|---|---|---|---|---|---|---|
| 54734 | Debt Consolidation | RENT | B | B4 | Aug 09, 2021 | $25,000 | 0.12 | 829.10 | $29,330 |
| 55742 | Credit Card | RENT | B | B5 | May 08, 2021 | $7,000 | 0.11 | 228.22 | $8,216 |
| 57245 | Debt Consolidation | OWN | C | C2 | Mar 10, 2021 | $1,200 | 0.13 | 40.50 | $1,458 |
| 57416 | Debt Consolidation | RENT | C | C3 | Nov 09, 2021 | $10,800 | 0.14 | 366.86 | $13,208 |
| 58915 | Debt Consolidation | RENT | B | B3 | Apr 08, 2021 | $7,500 | 0.10 | 162.34 | $5,844 |
| 59006 | Credit Card | MORTGAGE | C | C5 | Sep 09, 2021 | $3,000 | 0.14 | 102.92 | $3,705 |
| 61390 | Credit Card | MORTGAGE | A | A5 | Feb 10, 2021 | $4,000 | 0.08 | 125.13 | $4,452 |
| 61419 | Debt Consolidation | RENT | D | D2 | Feb 10, 2021 | $5,600 | 0.15 | 194.02 | $6,475 |
| 62102 | Debt Consolidation | RENT | B | B1 | Apr 10, 2021 | $3,200 | 0.10 | 103.08 | $3,414 |
| 65426 | Car | MORTGAGE | B | B1 | Aug 09, 2021 | $4,000 | 0.11 | 131.22 | $2,755 |

### 🔍 Filters Available
- **State** — Filter by US state
- **Grade** — Filter by loan grade
- **Good v Bad Loan** — Filter by loan quality

---

## 🗄️ SQL Queries Documentation

> **Note:** This project uses **PostgreSQL** syntax. Some queries differ from SQL Server (mentor's version) due to differences in date functions. Key differences are noted where applicable.

---

### 1. Data Preview
Quick look at the first 5 records in the table.
```sql
SELECT * FROM bank_loan_data LIMIT 5;
```

---

### 2. Total Loan Applications
```sql
SELECT COUNT(id) AS Total_Loan_Applications 
FROM bank_loan_data;
```
**Result:** 39K total applications

---

### 3. MTD & PMTD Loan Applications
**MTD (Month-To-Date)** — Total applications in December 2021.
```sql
SELECT COUNT(id) AS MTD_Total_Loan_Applications 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 12 
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;
```

**PMTD (Previous Month-To-Date)** — Total applications in November 2021.
```sql
SELECT COUNT(id) AS PMTD_Total_Loan_Applications 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 11 
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;
```
> **PostgreSQL Note:** `EXTRACT(MONTH FROM ...)` and `TO_DATE()` are used instead of SQL Server's `MONTH()` and `YEAR()` functions.

---

### 4. Total Funded Amount
**MTD Funded Amount:**
```sql
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 12
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;
```

**PMTD Funded Amount:**
```sql
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 11
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;
```
**Result:** MTD = $54M | Total = $436M

---

### 5. Total Amount Received
**MTD Amount Received:**
```sql
SELECT SUM(total_payment) AS MTD_Total_Amount_Received 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 12
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;
```

**PMTD Amount Received:**
```sql
SELECT SUM(total_payment) AS PMTD_Total_Amount_Received 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 11
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;
```
**Result:** MTD = $58M | Total = $473M

---

### 6. Average Interest Rate
**MTD Average Interest Rate:**
```sql
SELECT ROUND(AVG(int_rate), 4) * 100 AS MTD_Avg_Interest_Rate 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 12
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;
```

**PMTD Average Interest Rate:**
```sql
SELECT ROUND(AVG(int_rate), 4) * 100 AS PMTD_Avg_Interest_Rate 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 11
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;
```
**Result:** MTD = 12.4% | Overall = 12.0%

---

### 7. Average DTI
**MTD Average DTI:**
```sql
SELECT ROUND(AVG(dti), 4) * 100 AS MTD_Avg_DTI 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 12
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;
```

**PMTD Average DTI:**
```sql
SELECT ROUND(AVG(dti), 4) * 100 AS PMTD_Avg_DTI 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 11
AND EXTRACT(YEAR FROM TO_DATE(issue_date, 'DD-MM-YYYY')) = 2021;
```
**Result:** MTD = 13.7% | Overall = 13.3%

---

### 8. Good Loan Analysis
Good loans = **Fully Paid** or **Current** status.

```sql
-- Good Loan Percentage
SELECT (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100)
    / COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data;

-- Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications 
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount 
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_Received_Amount 
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';
```
**Result:** 86.2% | 33.2K Applications | $370.2M Funded | $435.8M Received

---

### 9. Bad Loan Analysis
Bad loans = **Charged Off** status.

```sql
-- Bad Loan Percentage
SELECT (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100)
    / COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data;

-- Bad Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications 
FROM bank_loan_data
WHERE loan_status = 'Charged Off';

-- Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount 
FROM bank_loan_data
WHERE loan_status = 'Charged Off';

-- Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_Amount_Received 
FROM bank_loan_data
WHERE loan_status = 'Charged Off';
```
**Result:** 13.8% | 5.3K Applications | $65.5M Funded | $37.3M Received

---

### 10. Loan Status Breakdown
```sql
SELECT
    loan_status,
    COUNT(id) AS Total_Loan_Applications,
    SUM(total_payment) AS Total_Amount_Received,
    SUM(loan_amount) AS Total_Funded_Amount,
    AVG(int_rate * 100) AS Interest_Rate,
    AVG(dti * 100) AS DTI
FROM bank_loan_data
GROUP BY loan_status;
```

---

### 11. Loan Applications by Month
```sql
SELECT
    TO_CHAR(issue_date::DATE, 'Month') AS Month,
    COUNT(id) AS Total_Loan_Applications,
    SUM(total_payment) AS Total_Amount_Received,
    SUM(loan_amount) AS Total_Funded_Amount
FROM bank_loan_data
GROUP BY
    TO_CHAR(issue_date::DATE, 'Month'),
    EXTRACT(MONTH FROM issue_date::DATE)
ORDER BY
    EXTRACT(MONTH FROM issue_date::DATE);
```
> **PostgreSQL Note:** `TO_CHAR()` replaces SQL Server's `DATENAME()`. `EXTRACT(MONTH FROM ...)` in `ORDER BY` ensures chronological sorting.

---

### 12. Loan Applications by State
```sql
SELECT
    address_state,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY Total_Loan_Applications DESC;
```

---

### 13. Loan Applications by Term
```sql
SELECT
    term,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term;
```
**Result:** 36 Months = 26.8% | 60 Months = 73.2%

---

### 14. Loan Applications by Employee Length
```sql
SELECT
    emp_length,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY COUNT(id) DESC;
```
**Result:** 10+ years experience leads with 8.9K applications

---

### 15. Loan Applications by Purpose
```sql
SELECT
    purpose,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY COUNT(id) DESC;
```
**Result:** Debt Consolidation dominates at 18.2K applications (47% of total)

---

### 16. Loan Applications by Home Ownership
```sql
SELECT
    home_ownership,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY COUNT(id) DESC;
```
**Result:** RENT and MORTGAGE borrowers dominate the dataset

---

## 🔄 PostgreSQL vs SQL Server Reference

| SQL Server | PostgreSQL | Usage |
|---|---|---|
| `MONTH(col)` | `EXTRACT(MONTH FROM col)` | Extract month number |
| `YEAR(col)` | `EXTRACT(YEAR FROM col)` | Extract year number |
| `DATENAME(month, col)` | `TO_CHAR(col::DATE, 'Month')` | Get month name |
| `GETDATE()` | `CURRENT_DATE` | Get current date |
| `TOP 10` | `LIMIT 10` | Limit rows returned |
| `ISNULL()` | `COALESCE()` | Handle null values |
| `LEN()` | `LENGTH()` | String length |

---

## 💡 Key Insights
- The bank has a strong loan portfolio with **86.2% good loans**
- **Fully Paid** loans dominate at 32,145 applications showing healthy repayment behavior
- **Charged Off** loans have the highest average interest rate at **13.9%** suggesting higher risk borrowers pay more
- Month-over-Month growth is positive across all metrics indicating **business growth**
- Total amount received (**$473M**) exceeds total funded (**$436M**) confirming **profitable lending**
- **Debt Consolidation** is the #1 loan purpose at 47% of all applications
- Borrowers with **10+ years employment** are the most active loan applicants
- **73.2%** of borrowers prefer 60-month terms for lower monthly payments

---

