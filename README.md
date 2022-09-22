# DuckDB - The SQLite for OLAP

> DuckDB is an in-process 
SQL OLAP database management system

When to use DuckDB

* Processing and storing tabular datasets, e.g. from CSV or Parquet files
* Interactive data analysis, e.g. Joining & aggregate multiple large tables
* Concurrent large changes, to multiple large tables, e.g. appending rows, adding/removing/updating columns
* Large result set transfer to client

When to not use DuckDB

* High-volume transactional use cases (e.g. tracking orders in a webshop)
* Large client/server installations for centralized enterprise data warehousing
* Writing to a single database from multiple concurrent processes

Source: https://duckdb.org


## Online transaction processing (OLTP) vs. Online analytic processing (OLAP)

Property | Transaction processing systems (OLTP) | Analytic systems (OLAP) |
---|---|---|
Main read pattern | Small number of records per query, fetched by key | Aggregate over large number of records |
Main write pattern | Random-access, low-latency writes from user input | Bulk import (ETL) or event stream |
Primarily used by | End user/customer, via web application | Internal analyst, for decision support |
What data represents | Latest state of data (current point in time) | History of events that happened over time | 
Dataset size | Gigabytes to terabytes | Terabytes to petabytes |

Source: Kleppmann (2017), Designing Data-Intensive Applications, O’Reilly

# Download data
* Generate Kaggle API Token (Login to Kaggle, click on your user symbol in the upper right corner, choose "Account", scroll down to "API" and click "Create New API Token")
* Place the content of the file into the file ".kaggle/kaggle.json"
* Run: 
See also: https://www.kaggle.com/docs/api