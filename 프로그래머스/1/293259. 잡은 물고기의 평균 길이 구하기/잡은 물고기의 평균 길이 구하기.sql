SELECT ROUND(AVG(CASE
    WHEN length <= 10 THEN 10
    WHEN length IS NULL THEN 10
    ELSE length
END),2) as average_length
FROM fish_info

