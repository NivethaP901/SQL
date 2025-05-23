SELECT 
    DATE_FORMAT(registration_date, '%Y-%m') AS month,
    COUNT(registration_id) AS registration_count
FROM 
    Registrations
WHERE 
    registration_date >= DATE_SUB(CURRENT_DATE, INTERVAL 12 MONTH)
GROUP BY 
    DATE_FORMAT(registration_date, '%Y-%m')
ORDER BY 
    month;
