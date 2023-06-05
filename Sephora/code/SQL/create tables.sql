DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS products;
CREATE TABLE products (
	product_id TEXT,
	product_name TEXT,
	brand_id NUMERIC,
	brand_name TEXT,
	loves_count NUMERIC,
	rating NUMERIC,
	reviews NUMERIC,
	product_size TEXT,
	variation_type TEXT,
	variation_value TEXT,
	variation_desc TEXT,
	ingredients TEXT,
	price_usd NUMERIC,
	value_price_usd NUMERIC,
	sale_price_usd NUMERIC,
	limited_edition BOOLEAN,
	new_item BOOLEAN,
	online_only BOOLEAN,
	out_of_stock BOOLEAN,
	sephora_exclusive BOOLEAN,
	highlights TEXT,
	primary_category TEXT,
	secondary_category TEXT,
	tertiary_category TEXT,
	child_count NUMERIC,
	child_max_price NUMERIC,
	child_min_price NUMERIC
);

CREATE TABLE reviews(
	author_id NUMERIC,
	rating NUMERIC,
	is_recommended NUMERIC,
	helpfulness NUMERIC,
	total_feedback NUMERIC,
	total_negative_feedback NUMERIC,
	total_positive_feedback NUMERIC,
    submit_time DATE,
	review_text TEXT,
	review_title TEXT,
	skin_tone TEXT,
	eye_color TEXT,
	skin_type TEXT,
	hair_color TEXT,
	product_id TEXT,
	product_name TEXT,
	brand_name TEXT,
	price_usd NUMERIC
)

