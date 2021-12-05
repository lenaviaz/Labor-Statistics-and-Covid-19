SELECT `Year`,
       Shoppers,
       COALESCE(LAG(Shoppers) OVER (ORDER BY `Year` ASC), 0) `Previous Shoppers`,
       COALESCE(100*(Shoppers -
                 LAG(Shoppers) OVER (ORDER BY `Year` ASC)) /
                 LAG(Shoppers) OVER (ORDER BY `Year` ASC), 0) `Percent Change`
FROM instacartShoppers;