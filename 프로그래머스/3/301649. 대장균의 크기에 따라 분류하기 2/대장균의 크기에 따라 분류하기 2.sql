
    
    
    SELECT 
    ID
    ,
        CASE 
        WHEN NTILE_RANK = 1 THEN 'CRITICAL'
        WHEN NTILE_RANK = 2 THEN 'HIGH'
        WHEN NTILE_RANK = 3 THEN 'MEDIUM'
        ELSE 'LOW'
        END AS COLONY_NAME
    FROM 
    (
    SELECT 
        ID,
        NTILE(4) OVER (ORDER BY SIZE_OF_COLONY DESC) AS NTILE_RANK
    FROM 
        ECOLI_DATA
    ) RANKED_DATA
    ORDER BY ID
    
    