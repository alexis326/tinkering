SELECT * FROM products LIMIT 10;

SELECT primary_category, reviews, price_usd, limited_edition, new_item FROM products 
GROUP BY primary_category ORDER BY primary_category;

-- All products with discounts and ratings
SELECT product_name, primary_category, price_usd, sale_price_usd, rating, price_usd - sale_price_usd AS discount FROM products
WHERE sale_price_usd IS NOT NULL AND rating IS NOT NULL
ORDER BY discount DESC;

-- Count of discount products per primary category
SELECT primary_category, COUNT(primary_category) AS number_of_products FROM products 
WHERE sale_price_usd IS NOT NULL
GROUP BY primary_category 
ORDER BY number_of_products DESC;


SELECT * FROM reviews 
INNER JOIN products ON reviews.product_id = products.product_id;

--
SELECT products.product_name, reviews.rating, helpfulness, products.reviews, review_text, products.ingredients from reviews
INNER JOIN products ON reviews.product_id = products.product_id
WHERE helpfulness IS NOT NULL
ORDER BY products.reviews DESC;