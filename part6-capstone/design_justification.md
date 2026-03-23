## Storage Systems

The system uses multiple storage solutions based on different use cases. A relational database (such as MySQL) is used for storing patient records because healthcare systems require strong consistency and reliability (ACID properties). This ensures accurate storage of patient history and medical records.

A data warehouse is used for generating monthly reports such as bed occupancy and department costs. It is optimized for analytical queries and supports large-scale aggregations.

A vector database is used to enable semantic search over patient records. This allows doctors to query patient history in plain English and retrieve relevant information based on meaning rather than exact keywords.

For real-time ICU data, a streaming database or time-series database is used to handle continuous data from monitoring devices efficiently.

This combination ensures that each system is optimized for its specific function.


## OLTP vs OLAP Boundary

The OLTP system consists of the transactional database (MySQL) where patient data is continuously updated through hospital operations such as admissions, treatments, and discharges. This system prioritizes speed and consistency.

The OLAP system begins at the data warehouse layer, where data is transformed and aggregated for reporting and analysis. The data warehouse is used for generating insights such as monthly reports and trends.

Thus, the boundary between OLTP and OLAP lies between the transactional database and the data warehouse. Data flows from OLTP systems into OLAP systems through ETL processes.


## Trade-offs

One key trade-off in this architecture is increased system complexity due to the use of multiple storage systems (SQL database, data warehouse, vector database, and streaming system). While this improves performance and scalability, it also increases maintenance overhead.

To mitigate this, a unified data pipeline and orchestration tools can be used to manage data flow efficiently. Additionally, clear separation of responsibilities and proper monitoring systems can help maintain reliability while benefiting from the strengths of each component.
