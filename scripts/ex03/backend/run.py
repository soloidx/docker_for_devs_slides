import json
from flask import Flask
import psycopg2
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    postgres_host = os.environ.get('POSTGRES_HOST', 'bd')
    conn = psycopg2.connect(user='user',
                            password='pass',
                            database='test',
                            host=postgres_host)
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM usuarios;')
    record = cursor.fetchall()
    conn.close()
    return json.dumps({'data': [{'id': ele[0], 'name':ele[1]} for ele in record]})

if __name__ == '__main__':
    app.run(host='0.0.0.0')
