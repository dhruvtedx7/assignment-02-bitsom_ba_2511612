Anomaly Analysis
In the current structure, it is not possible to insert data about a customer unless an order is created.
For example, iIf a new customer (e.g., CUST051) registers but has not placed any order yet, there is no way to store their information in this table without creating a dummy order.
Columns involved: customer_id, order_id

Update Anomaly
Customer-related information is indirectly repeated across multiple rows because each customer can have multiple orders.
For example, customer CUST048 appears in multiple rows (ORD2011, ORD2014, ORD2069, ORD2070, ORD2086, ORD2087). If we needed to update any customer-related attribute (e.g., customer details if present), it would need to be updated in all rows. Missing even one update would lead to inconsistent data.
Columns involved: customer_id

Delete Anomaly
Deleting an order may lead to unintended loss of customer-related information.
For example, if a customer has only one order and that order is deleted, all information related to that customer (customer_id association) is lost from the dataset.
Columns involved: customer_id, order_id
