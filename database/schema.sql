-- 1. Customers
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    address TEXT
);

-- 2. Menu Items
CREATE TABLE MenuItems (
    item_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    ingredients TEXT,
    price DECIMAL(10, 2),
    calories INT,
    food_category VARCHAR(50)
);

-- 3. Orders
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    tracking_number VARCHAR(50),
    status VARCHAR(50),
    total_price DECIMAL(10, 2)
);

-- 4. OrderDetails (Linking Orders to MenuItems)
CREATE TABLE OrderDetails (
    order_detail_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES Orders(order_id) ON DELETE CASCADE,
    item_id INT REFERENCES MenuItems(item_id),
    quantity INT,
    item_price DECIMAL(10,2)
);

-- 5. Reviews (Ratings & Reviews)
CREATE TABLE Reviews (
    review_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    item_id INT REFERENCES MenuItems(item_id),
    review_text TEXT,
    score INT CHECK (score >= 1 AND score <= 5)
);

-- 6. Payments
CREATE TABLE Payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES Orders(order_id),
    card_info VARCHAR(100),
    payment_type VARCHAR(50),
    transaction_status VARCHAR(50)
);

-- 7. Ingredients (Resource Management)
CREATE TABLE Ingredients (
    ingredient_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    amount DECIMAL(10,2),
    unit VARCHAR(20)
);

-- 8. Promotions
CREATE TABLE Promotions (
    promo_id SERIAL PRIMARY KEY,
    code VARCHAR(50),
    expiration_date DATE
);

-- 9. PromotionItems (Many-to-Many: Promotions <-> MenuItems)
CREATE TABLE PromotionItems (
    promo_item_id SERIAL PRIMARY KEY,
    promo_id INT REFERENCES Promotions(promo_id),
    item_id INT REFERENCES MenuItems(item_id)
);
