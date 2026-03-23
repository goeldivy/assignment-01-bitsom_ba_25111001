## Storage Systems

In this architecture, multiple storage systems are used to meet different functional requirements of the hospital network. A relational SQL database (OLTP system) is used to store patient records, treatment history, and transactional hospital data because it ensures strong consistency, reliability, and support for structured queries. This is critical for maintaining accurate patient information.

A Data Lake is used to store raw data such as ICU device streams, logs, and unstructured data like images. Since healthcare data comes in multiple formats, a Data Lake allows flexible storage using schema-on-read, enabling future processing and analytics.

A Data Warehouse (OLAP system) is used for reporting and analytics such as monthly hospital reports, bed occupancy, and cost analysis. It stores cleaned and structured data optimized for fast query performance and business intelligence reporting.

A Vector Database is used to support AI-powered search. Patient records and documents are converted into embeddings and stored in the vector database, allowing doctors to query patient history using natural language. This enables semantic search instead of simple keyword matching.

---

## OLTP vs OLAP Boundary

The OLTP system (SQL database) handles real-time transactional operations such as storing patient records, updating treatment details, and managing hospital workflows. It is optimized for fast inserts, updates, and consistency.

The OLAP system (Data Warehouse) is used for analytical purposes. Data is extracted from the OLTP system and loaded into the Data Warehouse through ETL pipelines. This separation ensures that analytical queries do not affect the performance of transactional systems.

Thus, the boundary lies between real-time operations (OLTP) and analytical reporting (OLAP), with ETL pipelines acting as the bridge between them.

---

## Trade-offs

One major trade-off in this architecture is increased system complexity due to the use of multiple storage systems such as Data Lake, Data Warehouse, and Vector Database. Managing data consistency, integration, and maintenance across these systems can be challenging.

To mitigate this, a well-designed ETL pipeline and data governance strategy can be implemented. Automation tools can ensure smooth data flow between systems, while monitoring and validation mechanisms can maintain data quality. Although the architecture is more complex, it provides scalability, flexibility, and supports advanced AI use cases, making it suitable for modern healthcare systems.
