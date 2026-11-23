# Power BI Dashboard Design Guide — Workforce
## Suggested Page 1: Workforce Overview
- KPI cards: Employees, Avg Productivity, Avg Attendance %, Total Work Hours, Avg Overtime, Avg Rating
- Line chart: monthly productivity trend
- Bar chart: productivity by department
- Donut chart: performance rating distribution
- Slicers: month, department, location, role

## Suggested Page 2: Attendance & Work Hours
- Attendance rate by department and month
- Total work hours by department
- Average overtime by department
- Scatter chart: attendance rate vs productivity
- Slicers: department, month, location

## Suggested Page 3: Performance
- Productivity score distribution
- Employee-month table with conditional formatting
- Average performance rating by department
- Top productivity records (interpret cautiously; avoid treating synthetic metrics as real employee evaluation)

## Starter DAX Measures
```DAX
Employee Count = DISTINCTCOUNT(WorkforceMonthly[EmployeeID])
Average Productivity = AVERAGE(WorkforceMonthly[ProductivityScore])
Average Attendance Rate = AVERAGE(WorkforceMonthly[AttendanceRatePct])
Total Work Hours = SUM(WorkforceMonthly[TotalWorkHours])
Average Overtime = AVERAGE(WorkforceMonthly[OvertimeHours])
Average Performance Rating = AVERAGE(WorkforceMonthly[PerformanceRating])
```
