import psycopg2

def conectar_db():
    conexion = psycopg2.connect(
    host="localhost",
    database="PokePoke",
    user="postgres",
    password="penguin",
    port="5432",
    )
    return conexion

conexion = conectar_db()
cursor = conexion.cursor()
