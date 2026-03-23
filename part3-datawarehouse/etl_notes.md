## ETL Decisions

### Decision 1 — Date Standardization
Problem: The raw dataset contained inconsistent date formats (e.g., DD-MM-YYYY, MM/DD/YYYY), making it difficult to analyze data by time.

Resolution: All dates were converted into a standard format (YYYY-MM-DD) before loading into the dim_date table. This ensures consistency and enables accurate monthly and yearly analysis.


### Decision 2 — Category Normalization
Problem: Product categories had inconsistent casing and naming (e.g., "electronics", "Electronics", "ELECTRONICS").

Resolution: All category values were standardized to a consistent format (e.g., "Electronics", "Clothing", "Groceries") before inserting into the dim_product table. This avoids duplication and ensures correct aggregation in reports.


### Decision 3 — Handling Missing Values
Problem: Some rows had NULL or missing values for fields like category or store.

Resolution: Missing values were either replaced with a default value such as "Unknown" or excluded during transformation. This ensured that the dataset remained clean and usable for analysis.
