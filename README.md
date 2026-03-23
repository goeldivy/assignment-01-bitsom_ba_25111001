## Relational Database Design (Part 1)

This section focuses on normalizing a denormalized dataset into a structured relational database.

### Tasks Covered:
- Identified data anomalies (Insert, Update, Delete)
- Normalized data to Third Normal Form (3NF)
- Designed relational schema with primary and foreign keys
- Wrote SQL queries for data analysis

### Key Concepts:
- Data Normalization
- Data Integrity
- SQL Querying
- Eliminating Redundancy

### Files:
- schema_design.sql
- queries.sql
- normalization.md


## NoSQL Database (Part 2)

This section demonstrates the use of MongoDB for handling flexible and semi-structured data.

### Tasks Covered:
- Created sample documents for different product categories
- Performed MongoDB operations (insert, find, update, index)
- Compared RDBMS and NoSQL databases

### Key Concepts:
- Document-based data model
- Flexible schema
- JSON structure
- Indexing in MongoDB

### Files:
- sample_documents.json
- mongo_queries.js
- rdbms_vs_nosql.md

## Data Warehouse Design (Part 3)

This section focuses on designing a data warehouse using a star schema for analytical reporting.

### Tasks Covered:
- Designed star schema (fact and dimension tables)
- Cleaned and transformed raw data (ETL)
- Loaded structured data into warehouse
- Wrote analytical queries

### Key Concepts:
- Star Schema
- ETL (Extract, Transform, Load)
- OLAP systems
- Aggregation and reporting

### Files:
- star_schema.sql
- dw_queries.sql
- etl_notes.md


## Vector Database (Part 4)

This section demonstrates how vector embeddings are used for semantic similarity.

### Tasks Covered:
- Generated embeddings using Sentence Transformers
- Computed cosine similarity between sentences
- Visualized similarity matrix using heatmap
- Retrieved most similar sentences for a query

### Key Concepts:
- Embeddings
- Cosine Similarity
- Semantic Search
- Vector Representation

### Colab Link:
https://colab.research.google.com/drive/1nBlBNr6PpjUMXuO61FXUEhRQcgaSXdge?usp=sharing
### Files:
- embeddings_demo.ipynb
- vector_db_reflection.md


## Data Lake & DuckDB (Part 5)

This section demonstrates querying multiple data formats directly using DuckDB.

### Tasks Covered:
- Queried CSV, JSON, and Parquet files without loading into tables
- Performed joins across different data formats
- Wrote analytical SQL queries

### Key Concepts:
- Data Lake architecture
- Schema-on-read
- DuckDB querying
- Cross-format data processing

### Files:
- duckdb_queries.sql
- architecture_choice.md


## Capstone Architecture Design (Part 6)

This section presents a complete data architecture for a hospital system.

### System Goals:
- Predict patient readmission
- Enable natural language search for doctors
- Generate monthly reports
- Handle real-time ICU data

### Architecture Components:
- Data Sources (Patient records, ICU devices)
- Data Lake (raw storage)
- Processing layer (ETL and streaming)
- SQL Database (OLTP)
- Data Warehouse (OLAP)
- Vector Database (semantic search)

### Outputs:
- AI prediction model
- Doctor query system
- Reporting dashboard

### Files:
- architecture_diagram.png
- design_justification.md
