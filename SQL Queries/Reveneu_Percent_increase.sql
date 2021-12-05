SELECT `Year`,
       Revenue,
       COALESCE(LAG(Revenue) OVER (ORDER BY `Year` ASC), 0) `Previous_Revenue`,
       COALESCE(100*(Revenue -
                 LAG(Revenue) OVER (ORDER BY `Year` ASC)) /
                 LAG(Revenue) OVER (ORDER BY `Year` ASC), 0) `Percent_Change`				
FROM instacartrevenue;
