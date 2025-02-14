# SELECT COUNT(*) AS FISH_COUNT, DATE_FORMAT(TIME, '%c') AS MONTH
# FROM FISH_INFO
# GROUP BY MONTH
# ORDER BY MONTH ASC
# 이 경우에는 정렬이 문자정렬로 취급되는 듯 => 오답

SELECT COUNT(*) AS FISH_COUNT, MONTH(TIME) AS MONTH
FROM FISH_INFO
GROUP BY MONTH
ORDER BY MONTH ASC