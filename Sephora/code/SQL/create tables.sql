DROP TABLE IF EXISTS products;
CREATE TABLE products (
	product_id NUMERIC,
	product_name TEXT,
	brand_id NUMERIC,
	brand_name TEXT,
	loves_count NUMERIC,
	rating NUMERIC,
	reviews NUMERIC,
	product_size TEXT,
	variation_type TEXT,
	variation_value TEXT,
	PRIMARY KEY (product_id)
);

DROP TABLE IF EXISTS reviews;
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
	product_id NUMERIC,
	PRIMARY KEY (author_id),
	CONSTRAINT fk_product
		FOREIGN KEY (product_id)
			REFERENCES products(product_id)
)