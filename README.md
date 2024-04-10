# P4 Sumission

## Order of Execution
1. DDL.sql
2. TRIGGERS.sql
3. DML.sql
4. Non_Clustered_Indexes
5. Stored Procedures.sql
6. Views.sql
7. UDFs.sql
8. Encryption.sql

## Instructions to run GUI:
Replace the server name with your own server name in conn

ex:

# Replace 'ODBC Driver 17 for SQL Server' with the driver installed on your machine if different
```python
    conn = pyodbc.connect(
        r'DRIVER={ODBC Driver 17 for SQL Server};'
        r'SERVER=YourServerName;' # Replace with your server name
        r'DATABASE=Football_Club_Management;' # Replace with your database name
        r'Trusted_Connection=yes;'
    )
```
run the following commands: 
```bash
pip install streamlit
pip install pandas
pip install pyodbc
pip base64
```
Follow the folder in path set the serminal and run the command:
Replace the 
```bash
streamlit run GUI.py
```
