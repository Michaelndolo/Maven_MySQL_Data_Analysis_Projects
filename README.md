# Maven_MySWL_Data_Analysis_Projects

## Table of Contents

-[Overview](#overview)

-[Data Sources](#data-sources)

-[Tools](#tools)

-[Data Cleaning](#data-cleaning)

-[Exploratory Data Analysis](#exploratory-data-analysis)

-[Data Analysis](#data-analysis)

-[Findings](#findings)

-[Recommendations](#recommendations)

-[Limitations](#limitations)

-[References](#references)


### Overview
---

In this series, I played the role of a business owner who just acquired Maven Movies, a brick and mortar DVD rental shop. Using MysQL database, my job was to learn everything I could about my new business, including inventory, staff, and customer behaviour.

### Data Sources
---

Sales Data: The primary dataset used for this analysis is the "sales_data.csv" file, containing detailed information about each sale made by the company.

### Tools and Frameworks
---

- Mysql Workbench - Data querying
- SQL Server - Data Analysis
- PowerBI - Data Visualization

### Data Cleaning
---

In the initial data preparation phase, we performed the following tasks:
1. Data loading and inspection.
2. Handling missing values.
3. Data cleaning and formatting.

### Exploratory Data Analysis
---

EDA involved exploring the sales data to answer key questions, such as:

- What is the overall sales trend?
- Which products are top sellers?
- What are the peak sales periods?

### Data Analysis
---

Include some interesting code/features worked with

``` SQL
SELECT *
FROM table 1
WHERE cond = 2;
```

### Findings
---

Below are some of the findings from our analysis:
1. The company's sales have been steadily increasing over the past year, with a noticeable peak during the holiday season.
2. Product Category A is the best-perfoming category in terms of sales and revenue.
3. Customer segments with high lifetime value (LTV) should be targetted for marketing efforts.

### Recommendations
---

Based on our analysis, we recommend the following actions:
- Invest in marketing and promotions during peak sales seasons to maximize revenue.
- Focus on expanding and promoting products in Category A.
- Implement a custoomer segmentation strategy to target high-LTV customers effectively.

### Limitations
---

I had to remove all zero values from the budget and revenue columns because they would have affected the accuracy of my conclusions from the analysis. There are still a few outliers even after the ommissions but even then we can still see that there is a positive correlation between both budget and number of votes with revenue.

### References
---

1. SQL For Data Analysis
2. [Stack overflow](https:https//stack.com)

