# 🏦 Bank Customer Retention & Churn Analysis

<p align="center">
  <strong>An end-to-end analytical case study identifying customer characteristics and meaningful customer segments associated with churn using Excel, SQL and Power BI.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black" />
  <img src="https://img.shields.io/badge/SQL-Segmentation-336791?logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/DAX-Measures-1F4E79" />
  <img src="https://img.shields.io/badge/Excel-EDA-217346?logo=microsoftexcel&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-Portfolio-181717?logo=github&logoColor=white" />
</p>

---

## 📖 Project Overview

Customer attrition is one of the most important metrics in retail banking, but an overall churn rate alone does not explain **which customers are leaving**, **where churn is concentrated**, or **which customer groups should receive retention attention first**.

This project analyses a dataset of **10,000 bank customers** across **France, Germany and Spain** to investigate how churn varies across customer demographics, engagement behaviour and product ownership. The analysis progresses through **Excel for exploratory analysis**, **SQL for multi-dimensional customer segmentation**, and **Power BI for interactive business reporting**.

Rather than stopping at descriptive charts, the project combines customer characteristics to identify **meaningful high-risk segments** while balancing **churn rate**, **segment size**, and **churned customer volume** to support better retention prioritisation.

---

# 📌 Business Problem

The bank has customer-level demographic, account and churn information, but needs to translate raw customer data into actionable retention insights.

An overall churn rate of **20.37%** hides significant differences between customer groups. Without understanding **where churn is concentrated**, retention teams risk treating every customer as equally at risk.

### Why this matters

- Identify customer groups with materially higher churn.
- Compare churn across geographic markets.
- Understand how customer characteristics interact.
- Avoid prioritising very small customer groups with misleading churn percentages.
- Provide a business-focused framework for retention investigation.

### Potential Stakeholders

- Customer Retention Teams
- Customer Experience Teams
- Product Teams
- Business Intelligence Analysts
- Commercial & Business Leadership

---

# 🎯 Project Objectives

The analysis was designed to answer a series of business-focused retention questions.

### Objectives

- Measure the overall customer churn rate.
- Identify demographic characteristics associated with higher churn.
- Compare churn across France, Germany and Spain.
- Investigate churn across age groups, activity status and product ownership.
- Analyse how multiple customer characteristics interact.
- Identify meaningful high-risk customer segments.
- Prioritise customer segments using both **churn rate** and **customer population**.
- Translate findings into actionable retention recommendations.

---

# ❓ Business Questions Answered

- What is the bank's overall churn rate?
- Which country experiences the highest churn?
- Which age groups churn the most?
- Do inactive customers churn more than active customers?
- How does product ownership relate to churn?
- Does balance show different churn behaviour across countries?
- Which combinations of customer characteristics create the highest-risk customer profiles?
- Which customer segments should receive retention investigation first?

---

# 📊 Dataset Overview

| Attribute | Description |
|------------|-------------|
| **Source** | Maven Analytics – Bank Customer Churn Dataset |
| **Industry** | Banking / Financial Services |
| **Customers** | **10,000** |
| **Original Features** | 13 customer attributes |
| **Countries** | France, Germany, Spain |
| **Target Variable** | `Exited` (Customer churn) |
| **Analysis Tools** | Excel, SQL (SQLite), Power BI, DAX |
| **Derived Features** | Age Bands, Balance Groups, Customer Segments |

### Key Variables

- Geography
- Age
- Credit Score
- Balance
- Tenure
- Number of Products
- Credit Card Ownership
- Activity Status
- Estimated Salary
- Exited (Churn)

### Data Validation

The dataset was validated before analysis.

- ✅ No duplicate customer records.
- ✅ No missing values detected.
- ✅ Category values standardised.
- ✅ Numeric fields checked for inconsistencies.

### Dataset Limitations

The dataset does **not** contain:

- Customer satisfaction scores
- Complaint history
- Transaction behaviour over time
- Marketing interactions
- Reasons for account closure
- Customer profitability
- Longitudinal behavioural history

> **Important:** This project identifies **associations** between customer characteristics and churn. It does **not** establish causal reasons why customers leave.

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Microsoft Excel** | Data validation and exploratory analysis using PivotTables. |
| **SQL (SQLite)** | Multi-dimensional segmentation and conditional aggregation. |
| **Power BI** | Interactive dashboard development and reporting. |
| **Power Query** | Data transformation and preparation. |
| **DAX** | KPI measures, churn calculations and calculated columns. |
| **GitHub** | Documentation and portfolio presentation. |

### Technical Skills Demonstrated

- Power Query transformations
- DAX Measures
- Calculated Columns
- Conditional Aggregations
- Customer Segmentation
- Interactive Dashboard Design
- Business Intelligence Reporting
- Data Storytelling

---

# 🔄 Analytical Workflow

```text
Raw Customer Dataset
        │
        ▼
Data Validation (Excel)
        │
        ▼
Exploratory Analysis
        │
        ▼
Identify Initial Churn Patterns
        │
        ▼
SQL Customer Segmentation
        │
        ▼
Segment Validation & Prioritisation
        │
        ▼
Power BI Dashboard Development
        │
        ▼
Business Insights & Retention Priorities
```

### Methodology

#### 1. Data Validation (Excel)

Validated customer records and established baseline metrics before analysis.

#### 2. Exploratory Analysis (Excel)

Compared churn across:

- Geography
- Age
- Activity Status
- Product Ownership
- Balance
- Credit Score
- Tenure
- Credit Card Ownership

#### 3. Customer Segmentation (SQL)

SQL was used to investigate interactions between multiple customer characteristics.

**Techniques used**

- `CASE WHEN`
- Conditional Aggregation
- `GROUP BY`
- `HAVING`
- Multi-dimensional segmentation
- Customer population filtering

#### 4. Segment Validation

A **minimum customer population threshold of 50 customers** was applied when identifying priority customer segments.

> This was a **pragmatic analytical choice**, used to reduce the influence of very small segments with extreme churn percentages rather than a statistically derived cutoff.

#### 5. Interactive Reporting (Power BI)

The SQL findings were translated into a two-page Power BI dashboard focused on communicating retention priorities to stakeholders.

---

# 📸 Dashboard Preview

## Customer Churn Overview

![Customer Churn Overview](Images/customer_churn_overview.png)

**Purpose**

Provides an interactive overview of churn patterns across customer demographics and engagement characteristics.

**Dashboard Features**

- KPI cards
- Geography slicer
- Interactive filtering
- Customer churn comparisons
- Cross-filtering between visuals

---

## Retention Priorities

![Retention Priorities](Images/retention_priorities.png)

**Purpose**

Identifies customer segments with elevated observed churn rates while balancing churn rate with customer population.

The bubble chart compares:

- **X-axis:** Customer population
- **Y-axis:** Churn rate
- **Bubble size:** Number of churned customers

This helps distinguish **high churn percentages** from **high business exposure**.

---

# 📊 Headline Metrics

| Metric | Value |
|--------|------:|
| **Total Customers** | **10,000** |
| **Churned Customers** | **2,037** |
| **Overall Churn Rate** | **20.37%** |

### Highest Observed Churn Characteristics

| Finding | Result |
|---------|-------|
| Highest Churn Geography | **Germany — 32.44%** |
| Highest Churn Age Group | **48–57 — 55.26%** |
| Inactive Customer Churn | **26.85%** |
| Active Customer Churn | **14.27%** |
| Highest-Risk Meaningful Segment | **Germany · 48–57 · Inactive · 1 Product** |
| Segment Churn Rate | **89.23%** |

---

# 🔍 Key Findings

## 1. Germany has the highest overall churn rate

| Country | Churn Rate |
|---------|-----------:|
| Germany | **32.44%** |
| Spain | 16.67% |
| France | 16.15% |

Germany's churn rate is approximately **double** that of France and Spain, making it the strongest geographic area for further investigation.

---

## 2. Churn is concentrated among customers aged 48–57

| Age Group | Churn Rate |
|-----------|-----------:|
| 18–27 | 7.16% |
| 28–37 | 9.56% |
| 38–47 | 24.54% |
| **48–57** | **55.26%** |
| 58–67 | 39.52% |
| 68+ | 11.98% |

Churn increases sharply from age **38–47** before peaking among customers aged **48–57**.

---

## 3. Inactive customers churn substantially more than active customers

| Activity Status | Churn Rate |
|----------------|-----------:|
| **Inactive** | **26.85%** |
| Active | 14.27% |

Inactive customers experience almost **twice the observed churn rate** of active customers.

This highlights customer engagement as an important area for retention monitoring, although the dataset cannot determine whether inactivity causes churn.

---

## 4. Product ownership has a non-linear relationship with churn

| Number of Products | Churn Rate |
|-------------------|-----------:|
| 1 | 27.71% |
| **2** | **7.58%** |
| 3 | 82.71% |
| 4 | 100.00% |

Customers with **two products** have the lowest observed churn.

Customers with **three or four products** show extremely high churn percentages, but these groups contain relatively few customers (**266** and **60** respectively) and should therefore be interpreted cautiously.

---

## 5. Balance becomes more meaningful when combined with other characteristics

Balance alone showed a mixed relationship with churn.

| Balance Band | Churn Rate |
|-------------|-----------:|
| 0–100K | ~15.9% |
| 100K–200K | ~25.0% |
| 200K+ | ~55.9% |

However, the **200K+** group contains only **34 customers**, making its headline churn rate unreliable for broad prioritisation.

Further SQL analysis showed the relationship was particularly pronounced within **Germany**, demonstrating that balance should be interpreted alongside geography and customer demographics rather than in isolation.

---

## 6. Multi-dimensional segmentation reveals the highest-risk customer profile

Rather than analysing characteristics individually, SQL combined:

- Geography
- Age Group
- Activity Status
- Number of Products

This produced meaningful customer segments with sufficient population size.

### Highest-Risk Meaningful Segment

| Characteristic | Result |
|---------------|--------|
| Geography | Germany |
| Age Group | 48–57 |
| Activity Status | Inactive |
| Products | 1 |
| Customers | **130** |
| Churned Customers | **116** |
| Churn Rate | **89.23%** |

This compares with a bank-wide churn rate of **20.37%**.

---

## 7. The high-risk customer profile appears across multiple countries

The same customer profile appears among the highest-risk meaningful segments across every market.

| Country | Customers | Churned Customers | Churn Rate |
|---------|----------:|------------------:|-----------:|
| Germany | 130 | 116 | **89.23%** |
| Spain | 61 | 47 | **77.05%** |
| France | 154 | 116 | **75.32%** |

This changes the interpretation from:

> **"Germany is the churn problem."**

to:

> **"Germany has the highest churn severity, while older, inactive, single-product customers represent a broader cross-market churn profile."**

---

# 📈 Business Impact

The project translates a single churn metric into a framework for retention prioritisation.

### The analysis enables stakeholders to

- Focus retention investigation on customer groups with materially elevated churn.
- Compare churn severity across markets.
- Identify customer profiles that recur across multiple countries.
- Balance churn rate with customer population and churned-customer volume.
- Avoid prioritising extremely small customer groups with misleading percentages.
- Highlight where additional behavioural or customer experience data would provide the greatest value.

### Business Value

Instead of reporting:

> **20.37% of customers churned.**

The analysis identifies:

> **Which customer groups should be investigated first and why.**

---

# 💡 Recommendations

| Recommendation | Business Rationale |
|---------------|-------------------|
| Prioritise older, inactive, single-product customers for retention investigation. | Highest observed churn across all three countries. |
| Investigate Germany-specific customer experience factors. | Germany shows substantially higher overall churn. |
| Develop monitoring for declining customer engagement. | Activity status is associated with higher churn; longitudinal engagement data could enable earlier intervention. |
| Review the experience of one-product customers. | One-product customers consistently churn more than two-product customers. |
| Investigate three- and four-product customers separately. | Extremely high churn exists within much smaller customer populations. |
| Prioritise segments using both churn rate and customer population. | Large high-risk segments may create greater business impact than smaller extreme segments. |
| Validate retention interventions before scaling. | The analysis identifies associations rather than causal effects. |

---

# ⚠️ Limitations

This project is **descriptive and diagnostic**, not predictive.

### The analysis cannot determine

- Why customers left.
- Whether inactivity causes churn.
- Whether adding products reduces churn.
- Whether geographic differences are driven by external factors.

### Additional limitations

- No behavioural history or transaction timelines.
- No customer satisfaction or complaint data.
- No customer profitability or lifetime value.
- No marketing or retention campaign history.
- Some customer groups contain relatively small populations and require cautious interpretation.

---

# 🚀 Future Improvements

Potential extensions of this project include:

- 📈 Predictive churn modelling using historical behavioural data.
- 👥 Customer lifetime value segmentation.
- 📊 Customer profitability analysis.
- 🔄 Time-series monitoring of customer engagement.
- 🎯 Retention intervention / A/B testing analysis.
- 🤖 Machine learning churn prediction model.
- ☁️ Automated Power BI refresh connected to a live database.

---

# ⭐ Skills Demonstrated

### Business Intelligence

- Power BI Dashboard Development
- KPI Design
- Interactive Reporting
- Data Storytelling
- Dashboard Layout & UX

### SQL Analytics

- Conditional Aggregation
- CASE WHEN Segmentation
- Multi-dimensional GROUP BY Analysis
- HAVING Filters
- Customer Population Thresholds

### Data Analysis

- Exploratory Data Analysis
- Customer Segmentation
- Churn Analysis
- Business Insight Generation
- Analytical Thinking

### Technical Skills

- Microsoft Excel
- SQL (SQLite)
- Microsoft Power BI
- Power Query
- DAX
- GitHub Documentation

---

# 📂 Repository Structure

```text
Bank-Customer-Retention-Churn-Analysis/
│
├── Excel/
│   └── bank_churn_analysis.xlsx
│
├── SQL/
│   └── bank_churn_analysis.sql
│
├── PowerBI/
│   └── bank_churn_dashboard.pbix
│
├── Images/
│   ├── customer_churn_overview.png
│   └── retention_priorities.png
│
├── README.md
└── LICENSE
```

---

# 📚 Key Takeaways

This project demonstrates an end-to-end analytical workflow that progresses from **raw customer data** to **business-focused retention recommendations**.

Key analytical lessons include:

- High churn percentages should always be interpreted alongside customer population.
- Multi-dimensional segmentation reveals patterns that single-variable analysis can hide.
- Customer characteristics may interact differently across markets.
- Observed churn patterns should be treated as associations rather than causal conclusions.
- Effective dashboards communicate business priorities rather than simply displaying metrics.

---

# ✅ Conclusion

This project showcases an end-to-end **Business Intelligence and Customer Analytics** workflow using **Excel, SQL and Power BI** to transform raw customer data into actionable retention insights.

Starting with exploratory analysis, progressing through SQL-based customer segmentation, and culminating in a two-page interactive Power BI dashboard, the project demonstrates the ability to move from **data validation → analysis → segmentation → stakeholder reporting**.

Rather than identifying only where churn exists, the analysis highlights **which customer segments combine elevated churn rates with meaningful customer populations**, providing a practical framework for prioritising future retention investigation.

This portfolio project demonstrates core skills expected in **Data Analyst** and **Business Intelligence Analyst** graduate roles, including data cleaning, SQL analysis, DAX development, dashboard design, customer segmentation and business-focused data storytelling.
