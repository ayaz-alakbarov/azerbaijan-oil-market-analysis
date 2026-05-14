SELECT 
    DATE_TRUNC('month', transactiondate::date) AS month,
    transactiontype,
    COUNT(*) AS transaction_count,
    SUM(transactionamount) AS total_amount,
    AVG(transactionamount) AS avg_amount,
    MIN(transactionamount) AS min_amount,
    MAX(transactionamount) AS max_amount
FROM transactions
GROUP BY DATE_TRUNC('month', transactiondate::date), transactiontype
ORDER BY month, transactiontype;