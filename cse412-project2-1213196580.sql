-- QUERY 1
CREATE TABLE query1 AS
SELECT C.category_id, C.name, COUNT (*) AS count
FROM business B, category C, hascategory H
WHERE B.business_id = H.business_id AND C.category_id = H.category_id
GROUP BY C.category_id;

-- QUERY 2
CREATE TABLE query2 AS
SELECT C.category_id, C.name, AVG(R.rating) AS rating
FROM business B, category C, hascategory H, review R
WHERE B.business_id = H.business_id AND C.category_id = H.category_id AND R.business_id = H.business_id
GROUP BY C.category_id;

-- QUERY3
CREATE TABLE query3 AS
SELECT B.business_id, B.title, COUNT (*) AS CountOfRatings
FROM business B, review R
WHERE B.business_id = R.business_id
GROUP BY B.business_id
HAVING COUNT(*) > 4000;

-- QUERY4
CREATE TABLE query4 AS
SELECT B.business_id, B.title
FROM business B
WHERE B.title LIKE '%Chinese%';

-- QUERY5
CREATE TABLE query5 AS
SELECT B.business_id, B.title, AVG(R.rating) AS average  
FROM business B, review R
WHERE B.business_id = R.business_id                                 
GROUP BY B.business_id;

-- QUERY6
CREATE TABLE query6 AS
SELECT AVG(R.rating) AS average
FROM business B, review R
WHERE B.business_id = R.business_id AND B.title LIKE '%Chinese%';

-- QUERY7
CREATE TABLE query7 AS
SELECT AVG(R.rating) AS average
FROM business B, review R
WHERE B.business_id = R.business_id AND B.title LIKE '%Chinese%' AND B.title LIKE '%Japanese%';

-- QUERY8
CREATE TABLE query8 AS
SELECT AVG(R.rating) AS average
FROM business B, review R
WHERE B.business_id = R.business_id AND B.title LIKE '%Chinese%' AND B.title NOT LIKE '%Japanese%';

-- QUERY9
CREATE TABLE query9 AS
SELECT B.business_id, AVG(R.rating) AS rating
FROM business B, review R, users U
WHERE B.business_id = R.business_id AND U.user_id = R.user_id AND U.user_id = 'CxDOIDnH8gp9KXzpBHJYXw' 
GROUP BY B.business_id;



