-- HR Analytics SQL Project
-- Dataset: IBM HR Analytics Employee Attrition
-- Database: hr_analytics
-- Author: Navinya Arumugam

USE hr_analytics;
SHOW TABLES;
USE hr_analytics;

SELECT * FROM `wa_fn-usec_-hr-employee-attrition` LIMIT 10;

SELECT COUNT(*) AS Total_Employees
FROM `wa_fn-usec_-hr-employee-attrition`;

SELECT COUNT(*) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'Yes';
SELECT 
    ROUND(
        (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
        2
    ) AS Attrition_Rate_Percentage
FROM `wa_fn-usec_-hr-employee-attrition`;


SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Department;

SELECT
    JobRole,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY JobRole
ORDER BY Employees_Left DESC;

SELECT
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY OverTime;

SELECT
    Gender,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Gender;

SELECT
    MaritalStatus,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY MaritalStatus
ORDER BY Employees_Left DESC;

SELECT
    EducationField,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY EducationField
ORDER BY Employees_Left DESC;

SELECT
    JobRole,
    ROUND(AVG(MonthlyIncome), 2) AS Avg_Monthly_Income
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY JobRole
ORDER BY Avg_Monthly_Income DESC;

USE hr_analytics;

SELECT
    Attrition,
    ROUND(AVG(Age), 2) AS Average_Age
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Attrition;

USE hr_analytics;

SELECT
    Attrition,
    ROUND(AVG(Age), 2) AS Average_Age
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Attrition;

SELECT
    Attrition,
    ROUND(AVG(YearsAtCompany), 2) AS Avg_Years_At_Company
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY Attrition;

SELECT
    BusinessTravel,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY BusinessTravel
ORDER BY Employees_Left DESC;
USE hr_analytics;

SELECT
    BusinessTravel,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY BusinessTravel
ORDER BY Employees_Left DESC;

SELECT
    JobSatisfaction,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

SELECT
    WorkLifeBalance,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

SELECT
    EnvironmentSatisfaction,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY EnvironmentSatisfaction
ORDER BY EnvironmentSatisfaction;

SELECT
    JobLevel,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY JobLevel
ORDER BY JobLevel;

SELECT
    PerformanceRating,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY PerformanceRating
ORDER BY PerformanceRating;

SELECT
    YearsSinceLastPromotion,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;

SELECT
    YearsWithCurrManager,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left
FROM `wa_fn-usec_-hr-employee-attrition`
GROUP BY YearsWithCurrManager
ORDER BY YearsWithCurrManager;


