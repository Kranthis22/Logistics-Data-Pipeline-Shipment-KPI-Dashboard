-- Total shipments
SELECT COUNT(*) AS total_shipments FROM shipments;

-- Average delivery time
SELECT AVG(delivery_days) AS avg_delivery_time FROM shipments;

-- Late deliveries
SELECT COUNT(*) AS late_deliveries
FROM shipments
WHERE delivery_status = 'Late';
