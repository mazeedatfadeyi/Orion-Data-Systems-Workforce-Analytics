# Orion Data Systems Workforce Analytics

![Header image](sql-image.png)

## Executive Summary
This project uses SQL to analyze Orion Data Systems’ workforce data. The goal is to provide the HR & Strategy team with insights on employee distribution, salary trends, management structure, and workforce gaps. The findings will guide decision-making, improve resource allocation, and support strategic planning across Orion’s global operations.

## Business Context
Orion Data Systems operates globally with a diverse workforce spread across multiple regions, departments, and job roles. To optimize HR planning and strategy, the company requires data-driven insights into employee allocation, compensation patterns, and managerial structures. This analysis provides the foundation for informed decisions that strengthen workforce management and align with organizational goals.

## Objectives
- Analyze workforce distribution across departments, roles, and regions.
- Evaluate salary structures to identify trends, outliers, and pay gaps.
- Assess managerial hierarchies and reporting relationships.
- Detecting job roles without assigned employees to highlight workforce gaps.
-  Provide insights to support HR strategy, resource allocation, and organizational planning.

## Data Overview
The workforce database consists of several key tables that capture employee and organizational information. The Employees table contains details such as salaries, job IDs, department IDs, and  managers. The Departments table provides department names, and IDs, while the Jobs table outlines job titles along with their salary ranges. In addition, the  Countries tables provide geographic information to analyze workforce distribution across regions. Together, these datasets form the basis for examining employee allocation, pay structures, management hierarchies, and global workforce trends.

## Key Findings
- The Shipping department has the largest workforce with 45 employees, followed by the Sales department with 34 employees.
- Executives earn the highest average salary at 19,333.
- The Shipping department records the lowest average salary at 3,476.
- A total of 49 employees fall into the low salary band.

## Detailed Findings & Analysis
### Workforce Distribution

- The Shipping department has the largest workforce with 45 employees, highlighting it as the most resource-intensive unit.
- The Sales department follows with 34 employees, showing a strong presence in the company’s structure.

### Salary Comparison

- Despite its size, the Shipping department records the lowest average salary $3,476, indicating a concentration of lower-paid roles.
- Executives earn the highest average salary $19,333, reflecting their seniority and strategic importance.

### Salary Bands for Employees

- A total of 49 employees fall into the low salary band, underscoring the prevalence of lower-compensated roles.
- In comparison, 43 employees fall into the medium band, while 15 employees are in the high salary band, showing a workforce skewed towards lower and mid-level compensation.
### Country-Level Analysis

- Switzerland hosts the highest number of departments with 17, making it the company’s largest hub.
- Italy and China follow, each with 7 departments, showing balanced regional representation.

### Workforce Gaps
- From the analysis, it can be deduced that every department has at least one employee assigned, indicating no department is left unstaffed.

### Job Role Analysis

- Roles with significantly higher salaries include President $30,000, Administration Vice President $22,500, and Sales Manager $15,000.
- At the threshold level, both Finance Manager and Accounting Manager earn $12,100.


## Recommendations
- **Review compensation structure:** Address disparities between departments, especially the Shipping unit, which has the largest workforce but the lowest salaries. This may improve retention and motivation.

- **Balance workforce allocation:** Evaluate whether heavily staffed departments are over-resourced compared to smaller, high-impact functions like Executives.

- **Develop salary band strategies:** With most employees in the low and medium bands, HR should explore career progression pathways and targeted training to move talent upward.

- **Optimize regional operations:** Switzerland’s large departmental presence suggests potential duplication; benchmarking against Italy and China may highlight efficiency opportunities.

- **Sustain executive cost management:** While executive salaries are justified by responsibility, monitoring payroll concentration at the top ensures long-term financial sustainability.

## Tools Used
**MySQL**

## Conclusion
The analysis of Orion Data Systems’ workforce highlights clear patterns in employee distribution, salary structures, and departmental priorities. While some units like Shipping carry the largest workforce at lower pay scales, executive roles drive payroll costs despite their smaller size. The salary band distribution further reflects a workforce concentrated in lower and mid-level roles, signaling opportunities for growth and career development.
Overall, these insights provide a foundation for HR and strategy teams to make data-driven decisions on workforce planning, compensation policies, and long-term talent management, ensuring the organization remains balanced, competitive, and sustainable across its global operations.



