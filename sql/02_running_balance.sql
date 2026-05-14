SELECT 
    transactionid,
    accountid,
    transactiondate::date,
    transactionamount,
    transactiontype,
    SUM(transactionamount) OVER (
        PARTITION BY accountid 
        ORDER BY transactiondate::date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_balance
FROM transactions
ORDER BY accountid, transactiondate::date;