SELECT t.id, t.lottery_id, t.created_at
FROM lottery_ticket as t
INNER JOIN lottery as l
ON t.lottery_id = l.id
WHERE l.slug = 'lottery_slug'
AND t.created_at BETWEEN '2020-08-17 0:00:00' AND NOW();


SELECT COUNT(l.id), l.timezone
FROM lotteries as l
GROUP BY l.timezone;