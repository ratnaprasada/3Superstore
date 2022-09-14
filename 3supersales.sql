SELECT * FROM `3sales`;

# A The City of each Branch#
SELECT Branch, City FROM `3sales`
GROUP BY 1
ORDER BY 1;

# B Average Rating each Branch #
SELECT Branch, AVG(`Rating`) AS `Avg Rating` FROM `3sales`
GROUP BY 1
ORDER BY 1 ASC;

# C Revenue each Branch #
SELECT Branch, SUM(Total) AS Revenue FROM `3sales`
GROUP BY 1
ORDER BY 1;

# D Revenue each Month #
SELECT MONTH(`Date`) AS `Month`, SUM(Total) AS Revenue FROM `3sales`
GROUP BY 1
ORDER BY 1;

# E Revenue each Branch by Month #
SELECT Branch, MONTH(`Date`) AS `Month`, SUM(Total) AS Revenue FROM `3sales`
GROUP BY 1,2
ORDER BY 1 ASC;

# F Customer Gender #
SELECT Gender, COUNT(Gender) AS `Frequency of Orders` FROM `3sales`
GROUP BY 1;

# G Customer's Payment Type #
SELECT Payment, COUNT(Payment) AS `Frequency of Orders` FROM `3sales`
GROUP BY 1;

# H Customer Type #
SELECT `Customer type`, COUNT(`Customer type`) AS `Frequency of Orders` FROM `3sales`
GROUP BY 1;

# I Frequency Customer Type each Month #
SELECT  `Customer type`, MONTH(`Date`) AS `Month`, COUNT(`Customer type`) AS `Frequency of Orders` FROM `3sales`
GROUP BY 1,2
ORDER BY 1;

# J Total Order (Qty) each Product Line #
SELECT `Product line`, SUM(Quantity) AS `Total Order` FROM `3sales`
GROUP BY 1
ORDER BY 2 DESC;

# K Revenue, Gross Income, Avg GMP each Month #
SELECT MONTH(`Date`) AS `Month`, SUM(Total) AS Revenue, SUM(`gross income`) AS Profit, (AVG(`gross margin percentage`))/100 AS `Avg Gross Margin Percentage` FROM `3sales`
GROUP BY 1
ORDER BY 1 ASC;