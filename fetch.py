import psycopg2
import requests

def fetch_pokemones(id):
    api_url = f"https://pokeapi.co/api/v2/pokemon/{id}"
    respuesta = requests.get(api_url)
    
    if respuesta.status_code == 200:
        data = respuesta.json()
        pokemon_nombre = data.get('name')
        pokemon_numero = data.get("id")
        pokemon_tipo = data['types'][0]['type']['name']
        pokemon_img_front = data['sprites']['front_default']
        pokemon_img_back = data['sprites']['back_default']
        pokemon_movimiento_0 = data['moves'][0]['move']['name']
        if pokemon_numero == 132:
            pokemon_movimiento_1 = 'None'
            pokemon_movimiento_2 = 'None'
            pokemon_movimiento_3 = 'None'
        else:
            pokemon_movimiento_1 = data['moves'][1]['move']['name']
            pokemon_movimiento_2 = data['moves'][2]['move']['name']
            pokemon_movimiento_3 = data['moves'][3]['move']['name']
    # print (pokemon_nombre)
    # print (pokemon_numero)
    # print (pokemon_tipo)
    # print (pokemon_movimiento_0)
    # print (pokemon_movimiento_1)
    # print (pokemon_movimiento_2)
    # print (pokemon_movimiento_3)
    # print (pokemon_img_front)
    # print (pokemon_img_back)

    cursor.execute("""
        INSERT INTO pokemon (numero, nombre, tipo, movimiento1, movimiento2, 
        movimiento3, movimiento4, imagen_front, imagen_back)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
    """, (pokemon_numero, pokemon_nombre, pokemon_tipo, pokemon_movimiento_0, pokemon_movimiento_1, pokemon_movimiento_2, pokemon_movimiento_3, pokemon_img_front, pokemon_img_back))


conexion = psycopg2.connect(
    host="localhost",
    database="PokePoke",
    user="postgres",
    password="penguin",
    port="5432",
    )
cursor = conexion.cursor()

for i in range (1,152):
    fetch_pokemones(i)

conexion.commit()

cursor.close()
conexion.close()
