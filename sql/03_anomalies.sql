WITH stats AS (
    SELECT 
        transactiontype,
        AVG(transactionamount) AS avg_amount,
        STDDEV(transactionamount) AS std_amount
    FROM transactions
    GROUP BY transactiontype
)
SELECT 
    t.transactionid,
    t.accountid,
    t.transactiondate::date,
    t.transactionamount,
    t.transactiontype,
    s.avg_amount,
    s.std_amount,
    ROUND(((t.transactionamount - s.avg_amount) / s.std_amount)::numeric, 2) AS z_score
FROM transactions t
JOIN stats s ON t.transactiontype = s.transactiontype
WHERE ABS(t.transactionamount - s.avg_amount) > 2 * s.std_amount
ORDER BY z_score DESC;