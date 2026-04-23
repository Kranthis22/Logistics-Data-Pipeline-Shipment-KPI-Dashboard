-- Total shipments
SELECT COUNT(*) AS total_shipments FROM shipments;

-- Average delivery time
SELECT AVG(DATEDIFF(day, shipment_date, delivery_date)) AS avg_delivery_time
FROM shipments;

-- Late deliveries
SELECT COUNT(*) AS late_deliveries
FROM shipments
WHERE delivery_status = 'Late';

-- Late delivery percentage
SELECT 
    (COUNT(CASE WHEN delivery_status = 'Late' THEN 1 END) * 100.0) / COUNT(*) 
    AS late_delivery_percentage
FROM shipments;

-- Shipments by region
SELECT region, COUNT(*) AS total_shipments
FROM shipments
GROUP BY region;
