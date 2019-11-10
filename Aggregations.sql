# 7.Quiz: SUM

#1
SELECT SUM(o.poster_qty)
FROM orders o;

#2
SELECT SUM(o.standard_qty)
FROM orders o;

#3
SELECT SUM(o.total_amt_usd)
FROM orders o;

#4
SELECT o.standard_amt_usd + o.gloss_amt_usd standard_and_gloss_usd
FROM orders o;

#5
SELECT SUM(standard_amt_usd) / SUM(standard_qty)
FROM orders o;

# 11.Quiz: MIN, MAX, & AVG

#1
SELECT MIN(occurred_at)
FROM web_events;

#2
SELECT occurred_at
FROM web_events
ORDER BY occurred_at
LIMIT 1;

#3
SELECT MAX(occurred_at)
FROM web_events;

#4
SELECT occurred_at
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1;

#5
SELECT AVG(standard_amt_usd) standard_avg_sales, AVG(gloss_amt_usd) gloss_avg_sales, AVG(poster_amt_usd) poster_avg_sales, 
AVG(standard_qty) standard_avg_amt, AVG(poster_qty) poster_avg_amt, AVG(glossy_qty) glossy_avg_amt
FROM orders;

#6 (attempt 1)
SELECT total_amt_usd
FROM orders
WHERE total_amt_usd BETWEEN (COUNT(total_amt_usd)/ 2 - 1) AND (COUNT(total_amt_usd)/ 2 + 1)


# 14.Quiz: GROUP BY

#1
SELECT a.name account, o.occurred_at date
FROM accounts a
JOIN ORDERS o
ON a.id = o.account_id
ORDER BY o.occurred_at
LIMIT 1;

#2
SELECT a.name, SUM(o.total_amt_usd) total_sales
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name;
