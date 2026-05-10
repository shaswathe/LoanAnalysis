# 📊 Loan Risk Analytics System

## 📖 Project Overview
The Loan Risk Analytics System is an end-to-end banking analytics project developed to identify high-risk customers before loan approval using Internal Banking Data and External CIBIL Data.

This project integrates:
- SQL Server
- Power BI
- Python
- Machine Learning
- Streamlit Web Application

to perform:
- Descriptive Analytics
- Diagnostic Analytics
- Predictive Analytics

The goal is to support banks in making smarter lending decisions and reducing financial losses caused by loan defaults.

---

# 🎯 Business Problem
A leading bank faces challenges in identifying customers with high loan default risk before granting loans. Poor lending decisions increase:
- Financial losses
- Delinquency rates
- Portfolio risk

This project provides a data-driven solution to:
- Predict customer risk levels
- Improve approval strategies
- Monitor risky customers
- Enhance portfolio management

---

# 📂 Dataset Information

| Dataset | Rows | Columns | Description |
|---|---|---|---|
| INTERNAL_BANK_DATA | 51,336 | 26 | Loan accounts, trade lines, payment history |
| EXTERNAL_CIBIL_DATA | 51,336 | 62 | Credit score, delinquency, enquiries |

## 🔗 Common Key
Both datasets are connected using:
```text
PROSPECTID
```

---

# 🛠️ Technology Stack

| Tool | Purpose |
|---|---|
| SQL Server | Data storage, validation, cleaning |
| Power BI | Dashboard development & visualization |
| Python | Data analysis & machine learning |
| Streamlit | Web application development |
| Excel | Data verification |
| PowerPoint | Presentation & reporting |

---

# 🗄️ SQL Work Performed

## Database Activities
- Created LoanRiskAnalysis database
- Imported datasets into SQL Server
- Created Primary Key & Foreign Key relationships

## Data Validation
Performed:
- Missing value checks
- Duplicate checks
- Invalid value detection
- Data consistency verification

## Data Cleaning
- Replaced `-99999` values with NULL
- Updated incorrect data types
- Standardized numerical fields

---

# 📊 Exploratory Data Analysis (EDA)

## Descriptive Analytics
Performed analysis on:
- Credit Score Distribution
- Income Distribution
- Customer Segmentation
- Loan Product Analysis
- Delinquency Trends

## Diagnostic Analytics
Analyzed:
- Credit Score vs Risk
- Delinquency Impact
- Missed Payment Behavior
- Enquiry Analysis
- Credit Utilization Patterns

---

# 🤖 Machine Learning Model

## Model Used
### Logistic Regression

## Features Used
- Credit Score
- Net Monthly Income
- Delinquency Count
- Total Enquiries
- Credit Utilization
- Missed Payments

## Target Output
- Low Risk
- Medium Risk
- High Risk

## Evaluation Metrics
- Accuracy
- Precision
- Recall
- F1 Score
- ROC-AUC Score
- Confusion Matrix

---

# 📈 Power BI Dashboards

## Dashboard 1 — Executive Overview
Includes:
- Total Customers
- Average Credit Score
- High-Risk Customers
- Default Rate

## Dashboard 2 — Risk Analysis
Includes:
- Delinquency Trends
- Enquiry Analysis
- Loan Portfolio Analysis
- Risk Category Distribution

---

# 🌐 Streamlit Web Application

## Features
- User input for customer details
- Real-time risk prediction
- Risk category classification

## Prediction Categories
- Low Risk
- Medium Risk
- High Risk

---

# 📁 Project Structure

```text
LoanAnalysis/
│
├── loan_risk_model.ipynb
├── app.py
├── loan_risk_model.pkl
├── README.md
├── Loan_Risk_Analytics_Presentation.pptx
│
├── screenshots/
│   ├── dashboard.png
│   ├── streamlit_app.png
│   └── sql_queries.png
```

---

# 🚀 How to Run the Project

## 1️⃣ Install Required Libraries

```bash
pip install pandas numpy matplotlib seaborn scikit-learn streamlit pyodbc
```

---

## 2️⃣ Run Jupyter Notebook

```bash
jupyter notebook
```

Open:
```text
loan_risk_model.ipynb
```

---

## 3️⃣ Run Streamlit App

```bash
streamlit run app.py
```

---

# 📌 Business Recommendations

## Low-Risk Customers
- Faster loan approval
- Better interest rates

## Medium-Risk Customers
- Additional verification
- Controlled loan limits

## High-Risk Customers
- Strict approval process
- Continuous monitoring
- Possible rejection for extreme-risk cases

---

# ✅ Project Outcome

This project successfully:
- Built a complete Loan Risk Analytics pipeline
- Integrated SQL, Power BI, Python, and Streamlit
- Predicted customer risk categories
- Improved data-driven lending decisions
- Created interactive dashboards and web applications

---

# 👨‍💻 Author

### Shaswathe Bhuvaneshe R

**Domain:** Data Analytics & Machine Learning  
**Project:** Loan Risk Analytics System  
**Year:** 2026
