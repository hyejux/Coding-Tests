
SELECT CAR_ID , IF(AVAILABILITY = 1, "대여중", "대여 가능")
FROM (SELECT CAR_ID, SUM(IF('2022-10-16' BETWEEN START_DATE AND END_DATE, 1, 0)) AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID) x
ORDER BY 1 DESC


# select carid, if(availability = 1, '대여중', '대여 가능') as availability
# from (select carid, sum(if('2022-10-16' between startdate and enddate, 1, 0)) 
#       as availability 
#         from CARRENTALCOMPANYRENTALHISTORY group by 1) x
# order by 1 desc