SELECT 
    date, Retail_trade
FROM
    job_openings_per_industry
WHERE
    Retail_trade = (SELECT 
            MAX(Retail_trade)
        FROM
            job_openings_per_industry);
