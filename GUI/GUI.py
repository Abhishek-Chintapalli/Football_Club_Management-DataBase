import streamlit as st
import pandas as pd
import pyodbc
import base64


st.set_page_config(
    page_title="Football Club Management",
    page_icon="⚽",
    layout="wide",
    initial_sidebar_state="expanded",
)

def get_base64_of_file(file_path):
    with open(file_path, "rb") as f:
        data = f.read()
    return base64.b64encode(data).decode()

# Function to set background image
def set_background_image(file_path):
    base64_string = get_base64_of_file(file_path)
    st.markdown(
        f"""
        <style>
        .stApp {{
            background-image: url("data:image/jpg;base64,{base64_string}");
            background-size: cover;
            background-position: center;
        }}
        </style>
        """,
        unsafe_allow_html=True
    )

# Set the background image
set_background_image('./assets/fcmpic.jpg')




# Attempt to establish database connection right at the start
try:
    # Replace 'ODBC Driver 17 for SQL Server' with the driver installed on your machine if different
    conn = pyodbc.connect(
        r'DRIVER={ODBC Driver 17 for SQL Server};'
        r'SERVER=YourServerName;'
        r'DATABASE=Football_Club_Management;'
        r'Trusted_Connection=yes;'
    )
    connection_established = True
except Exception as e:
    st.error(f"Failed to connect to database: {e}")
    connection_established = False

# Function to get the list of all tables in the database
def get_table_names():
    if connection_established:
        query = """
        SELECT TABLE_NAME 
        FROM INFORMATION_SCHEMA.TABLES 
        WHERE TABLE_TYPE = 'BASE TABLE';
        """
        return pd.read_sql(query, conn)
    else:
        return pd.DataFrame()

# Function to get data from a specific table
def get_table_data(table_name):
    if connection_established:
        query = f"SELECT * FROM {table_name};"
        return pd.read_sql(query, conn)
    else:
        return pd.DataFrame()

# Function to get the list of all views in the database
def get_view_names():
    if connection_established:
        query = """
        SELECT TABLE_NAME 
        FROM INFORMATION_SCHEMA.VIEWS;
        """
        return pd.read_sql(query, conn)
    else:
        return pd.DataFrame()

# Function to get the list of all stored procedures in the database
def get_procedure_names():
    if connection_established:
        query = """
        SELECT ROUTINE_NAME 
        FROM INFORMATION_SCHEMA.ROUTINES 
        WHERE ROUTINE_TYPE = 'PROCEDURE';
        """
        return pd.read_sql(query, conn)
    else:
        return pd.DataFrame()


# App title
st.title('Football Club Management Database')

if connection_established:
    display_options = ["Tables", "Views", "Stored Procedures"]
    selected_option = st.selectbox("Choose what to display:", options=display_options)

    if selected_option == "Tables":
        table_names = get_table_names()
        if not table_names.empty:
            selected_table = st.selectbox('Select a table:', table_names['TABLE_NAME'])
            if st.button('Show Table Data'):
                df = get_table_data(selected_table)
                st.dataframe(df)
        else:
            st.write("No tables found in the database.")
    
    elif selected_option == "Views":
        view_names = get_view_names()
        if not view_names.empty:
            selected_view = st.selectbox('Select a view:', view_names['TABLE_NAME'])
            if st.button('Show View Data'):
                df = get_table_data(selected_view)  # Reusing the get_table_data function
                st.dataframe(df)
        else:
            st.write("No views found in the database.")
    
    elif selected_option == "Stored Procedures":
        procedure_names = get_procedure_names()
        if not procedure_names.empty:
            st.write('## Stored Procedures')
            st.dataframe(procedure_names)
        else:
            st.write("No stored procedures found in the database.")
else:
    st.write("Unable to establish a connection to the database. Please check the connection settings.")
    
# Function to execute a SQL query
def execute_query(query):
    cursor = conn.cursor()
    cursor.execute(query)
    conn.commit()

