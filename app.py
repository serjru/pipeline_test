from flask import Flask, render_template
import os
import socket

app = Flask(__name__)

@app.route('/')
def home():
    hostname = socket.gethostname()
    cluster_name = os.environ.get('CLUSTER_NAME', 'Unknown Cluster')
    return render_template('index.html', hostname=hostname, cluster_name=cluster_name)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
