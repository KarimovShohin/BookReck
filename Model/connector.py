import duckdb

def set_connection():
    credentials='books.db'
    return duckdb.connect(credentials)
    
