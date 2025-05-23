SELECT 
    DATE(registration_date) AS signup_date,
    COUNT(user_id) AS new_users
FROM 
    Users
WHERE 
    registration_date >= DATE_SUB(CURRENT_DATE, INTERVAL 7 DAY)
GROUP BY 
    DATE(registration_date)
ORDER BY 
    signup_date DESC;
