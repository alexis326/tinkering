COPY products(product_id, product_name, brand_id, brand_name, loves_count, rating, reviews, product_size, variation_type, variation_value,
			  variation_desc, ingredients, price_usd, value_price_usd, sale_price_usd, limited_edition, new_item, online_only, out_of_stock, sephora_exclusive, highlights, primary_category, secondary_category, 
			  tertiary_category, child_count, child_max_price, child_min_price)
FROM 'C:\product_info.csv'
DELIMITER  ','
CSV HEADER;

COPY reviews(author_id, rating, is_recommended, helpfulness, total_feedback, total_negative_feedback,
	total_positive_feedback, submit_time, review_text, review_title, skin_tone, eye_color, skin_type,
	hair_color, product_id, product_name, brand_name, price_usd)
FROM 'C:\all_reviews.csv'
DELIMITER ','
CSV HEADER;