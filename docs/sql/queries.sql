-- Демонстрационные read-only проверки для PostgreSQL.

-- 1. Активные товары с положительным остатком.
SELECT id, title, price, stock
FROM products
WHERE is_active = TRUE
  AND stock > 0
ORDER BY id;

-- 2. Товары и их категории.
SELECT p.id,
       p.title,
       c.name AS category_name,
       p.price
FROM products AS p
JOIN categories AS c ON c.id = p.category_id
ORDER BY c.name, p.title;

-- 3. Активные товары без существующей категории.
SELECT p.id, p.title, p.category_id
FROM products AS p
LEFT JOIN categories AS c ON c.id = p.category_id
WHERE p.is_active = TRUE
  AND c.id IS NULL;

-- 4. Нарушение правила: остаток не может быть отрицательным.
SELECT id, title, stock
FROM products
WHERE stock < 0;

-- 5. Возможные дубли названий внутри одной категории.
SELECT category_id,
       LOWER(TRIM(title)) AS normalized_title,
       COUNT(*) AS duplicate_count
FROM products
GROUP BY category_id, LOWER(TRIM(title))
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;

-- 6. Заказы, чья сохранённая сумма расходится с суммой позиций.
SELECT o.id,
       o.total_amount AS saved_total,
       COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS calculated_total
FROM orders AS o
LEFT JOIN order_items AS oi ON oi.order_id = o.id
GROUP BY o.id, o.total_amount
HAVING o.total_amount <> COALESCE(SUM(oi.quantity * oi.unit_price), 0);

-- 7. Позиции заказа со ссылкой на отсутствующий товар.
SELECT oi.id AS order_item_id,
       oi.order_id,
       oi.product_id
FROM order_items AS oi
LEFT JOIN products AS p ON p.id = oi.product_id
WHERE p.id IS NULL;

-- 8. Сводка заказов за последние 30 дней.
SELECT status,
       COUNT(*) AS orders_count,
       SUM(total_amount) AS total_revenue
FROM orders
WHERE created_at >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY status
ORDER BY status;
