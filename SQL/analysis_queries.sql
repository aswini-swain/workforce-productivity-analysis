-- Workforce Productivity & Performance Analysis
-- SQL Server (T-SQL). Import CSV into dbo.WorkforceMonthly first.

-- 1. Preview records
SELECT TOP (20) * FROM dbo.WorkforceMonthly;

-- 2. Overall workforce KPIs
SELECT
    COUNT(DISTINCT EmployeeID) AS EmployeeCount,
    AVG(ProductivityScore) AS AvgProductivityScore,
    AVG(AttendanceRatePct) AS AvgAttendanceRatePct,
    SUM(TotalWorkHours) AS TotalWorkHours,
    AVG(OvertimeHours) AS AvgOvertimeHours,
    AVG(CAST(PerformanceRating AS DECIMAL(5,2))) AS AvgPerformanceRating
FROM dbo.WorkforceMonthly;

-- 3. Department summary
SELECT
    Department,
    COUNT(DISTINCT EmployeeID) AS Employees,
    AVG(ProductivityScore) AS AvgProductivity,
    AVG(AttendanceRatePct) AS AvgAttendancePct,
    AVG(OvertimeHours) AS AvgOvertime,
    AVG(CAST(PerformanceRating AS DECIMAL(5,2))) AS AvgRating
FROM dbo.WorkforceMonthly
GROUP BY Department
ORDER BY AvgProductivity DESC;

-- 4. Monthly trend
SELECT
    YEAR([Month]) AS YearNum, MONTH([Month]) AS MonthNum,
    AVG(ProductivityScore) AS AvgProductivity,
    AVG(AttendanceRatePct) AS AvgAttendancePct,
    SUM(TotalWorkHours) AS TotalHours,
    AVG(OvertimeHours) AS AvgOvertime
FROM dbo.WorkforceMonthly
GROUP BY YEAR([Month]), MONTH([Month])
ORDER BY YearNum, MonthNum;

-- 5. Productivity score bands
SELECT
    CASE
        WHEN ProductivityScore >= 85 THEN 'High'
        WHEN ProductivityScore >= 70 THEN 'Medium'
        ELSE 'Low'
    END AS ProductivityBand,
    COUNT(*) AS EmployeeMonthRecords
FROM dbo.WorkforceMonthly
GROUP BY CASE
        WHEN ProductivityScore >= 85 THEN 'High'
        WHEN ProductivityScore >= 70 THEN 'Medium'
        ELSE 'Low'
    END
ORDER BY EmployeeMonthRecords DESC;

-- 6. Attendance and overtime relationship
SELECT
    Department,
    AVG(AttendanceRatePct) AS AvgAttendancePct,
    AVG(OvertimeHours) AS AvgOvertimeHours,
    AVG(ProductivityScore) AS AvgProductivity
FROM dbo.WorkforceMonthly
GROUP BY Department
ORDER BY AvgAttendancePct DESC;

-- 7. Highest productivity employee-months
SELECT TOP (15) EmployeeID, Department, [Month], ProductivityScore, AttendanceRatePct, OvertimeHours
FROM dbo.WorkforceMonthly
ORDER BY ProductivityScore DESC;

-- 8. Low productivity records to review (exploratory, not a judgment about employees)
SELECT EmployeeID, Department, [Month], ProductivityScore, AttendanceRatePct, OvertimeHours
FROM dbo.WorkforceMonthly
WHERE ProductivityScore < 60
ORDER BY ProductivityScore ASC;
