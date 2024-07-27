from flask import Flask, render_template, request
from conexion import cursor, conexion

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/pokemons')
def pokemons():
    cursor.execute('SELECT * FROM pokemon')
    pokemones = cursor.fetchall()
    return render_template('pokemons.html', pokemones=pokemones)

@app.route('/trainers', methods = ['GET', 'POST'])
def trainers():
    if request.method == 'POST':
        nombre_entrenador = request.form['nombre']
        cursor.execute("INSERT INTO trainers (nombre) VALUES (%s)",
            (nombre_entrenador,))
        conexion.commit()
    cursor.execute('SELECT * FROM trainers')
    trainers = cursor.fetchall()
    return render_template('trainers.html', trainers=trainers)

@app.route('/teams', methods = ['GET', 'POST'])
def teams():
    if request.method == 'POST':
        nombre_equipo = request.form['nombre_equipo']
        id_entrenador = request.form['id_entrenador']
        id_pkm_1 = request.form['id_pkm_1']
        id_pkm_2 = request.form['id_pkm_2']
        id_pkm_3 = request.form['id_pkm_3']
        cursor.execute("""
            INSERT INTO team (team_name, id_trainer, id_pkm_1, id_pkm_2, id_pkm_3)
            VALUES (%s, %s, %s, %s, %s)
        """, (nombre_equipo, id_entrenador, id_pkm_1, id_pkm_2, id_pkm_3))
        conexion.commit()
    cursor.execute('SELECT * FROM team')
    teams = cursor.fetchall()

    cursor.execute('SELECT * FROM trainers')
    trainers = cursor.fetchall()

    cursor.execute('SELECT * FROM pokemon')
    pokemones = cursor.fetchall()
    
    return render_template('teams.html', teams=teams, trainers=trainers, pokemones=pokemones)

@app.route('/battles', methods = ['GET', 'POST'])
def battles():
    if request.method == 'POST':
        team_1_id = request.form['team_1_id']
        team_2_id = request.form['team_2_id']
        fecha = request.form['date']
        ciudad = request.form['city']
        ganador_id = request.form['winner']

        cursor.execute("""
            INSERT INTO battle (team_1_id, team_2_id, date, city, winner)
            VALUES (%s, %s, %s, %s, %s)
        """, (team_1_id, team_2_id, fecha, ciudad, ganador_id))
        conexion.commit()
    cursor.execute('SELECT * FROM battle')
    battles = cursor.fetchall()

    cursor.execute('SELECT * FROM team')
    teams = cursor.fetchall()

    return render_template('battles.html', battles=battles, teams=teams)


if __name__ == '__main__':
    app.run(debug=True)