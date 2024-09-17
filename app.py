import os
from flask import Flask, render_template
import socket

app = Flask(__name__)

@app.route('/')
def hello():
    cluster_name = os.environ.get('CLUSTER_NAME', 'Unknown Cluster')
    node_name = socket.gethostname()
    return render_template('index.html', cluster_name=cluster_name, node_name=node_name)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)