## Anomaly Analysis

### Insert Anomaly



In the orders_flat.csv dataset, a new customer cannot be added without creating an order entry because customer details are stored along with order information. For example, customer_id, name, and city appear only with order_id, so a customer without an order cannot be inserted.

### Update Anomaly

Customer details such as city are repeated in multiple rows. For example, the same customer (e.g., Rohan Iyer from Mumbai) appears in multiple orders. If the city changes to Pune, it must be updated in all rows. Missing even one row leads to inconsistent data.

### Delete Anomaly

If an order is deleted, related customer and product information may also be lost. For example, if a customer has only one order and that row is deleted, all their details (customer_id, name, city) are removed from the dataset.

### Normalization Justification

Keeping all data in one table may seem simple, but it leads to redundancy and inconsistencies. In the dataset, customer and product information is repeated across multiple rows for each order, which increases storage and causes update anomalies.

By normalizing the data into separate tables such as Customers, Orders, Products, and Sales_Representatives, redundancy is reduced and consistency is maintained. Each entity is stored only once and linked using foreign keys.

Normalization to Third Normal Form (3NF) ensures that all attributes depend only on the primary key and removes transitive dependencies. This improves data integrity, scalability, and maintainability.

Although normalization introduces joins, the benefits of accuracy, reduced redundancy, and better data management outweigh the complexity. Therefore, normalization is necessary and not over-engineering.
