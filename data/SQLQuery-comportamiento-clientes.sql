-- 1. ¿Cuál es el ingreso total generado por los clientes hombres vs. las clientas mujeres?
SELECT gender, SUM(purchase_amount) as 'Total recaudado (USD)'
FROM dbo.sales
GROUP BY gender;

-- 2. ¿Qué clientes usaron un descuento pero aun así gastaron más que el monto promedio de compra?
SELECT customer_id, age, purchase_amount
FROM dbo.sales
WHERE purchase_amount >= (SELECT AVG(purchase_amount) FROM dbo.sales) AND discount_applied = 'Yes'
ORDER BY purchase_amount DESC, customer_id;

-- 3. ¿Cuáles son los 5 productos con la calificación promedio más alta?
SELECT TOP(5) item_purchased, AVG(review_rating) as 'Calificacion promedio'
FROM dbo.sales
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC;

-- 4. Compara los montos promedio de compra entre el envío Estándar y el envío Exprés.
SELECT shipping_type, AVG(purchase_amount) as 'Monto promedio de compra'
FROM dbo.sales
GROUP BY shipping_type
HAVING shipping_type IN ('Standard', 'Express');

-- 5. ¿Los clientes suscriptos gastan más? Compara el gasto promedio y el ingreso total entre suscriptores y no suscriptores.
SELECT subscription_status, COUNT(customer_id) as 'Cantidad de clientes', AVG(purchase_amount) as 'Monto promedio de compra',  SUM(purchase_amount) as 'Monto total de compra'
FROM dbo.sales
GROUP BY subscription_status;

-- 6. ¿Cuáles son los 5 productos con el mayor porcentaje de compras con descuentos aplicados?
SELECT TOP(5) item_purchased, ROUND(100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*), 2) as ratio_descuento
FROM dbo.sales
GROUP BY item_purchased
ORDER BY ratio_descuento DESC;

-- 7. Segmenta a los clientes en Nuevos, Recurrentes y Leales según su número total de compras anteriores, y muestra la cantidad de clientes en cada segmento.
WITH tipo_cliente as(
SELECT customer_id, previous_purchases, CASE 
											WHEN previous_purchases = 1 THEN 'Nuevo'
											WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Recurrente'
											ELSE 'Leal' END as segmento_cliente
FROM sales)

SELECT segmento_cliente, COUNT(*) as 'Numero de clientes'
FROM tipo_cliente
GROUP BY segmento_cliente;

-- 8. ¿Cuáles son los 3 productos más comprados dentro de cada categoría?
WITH ranking_productos AS (
SELECT category, item_purchased, COUNT(*) as numero_ventas, ROW_NUMBER() OVER (
																				PARTITION BY category 
																				ORDER BY COUNT(*) DESC
																				) as rn
FROM dbo.sales
GROUP BY category, item_purchased)

SELECT category, item_purchased, numero_ventas
FROM ranking_productos
WHERE rn <= 3
ORDER BY numero_ventas DESC, category;

-- 9. ¿Cuál es la contribución al ingreso de cada grupo de edad?
SELECT age_group, SUM(purchase_amount) as 'Ingreso Total', AVG(purchase_amount) as 'Ingreso Promedio'
FROM sales
GROUP BY age_group
ORDER BY SUM(purchase_amount) DESC;
