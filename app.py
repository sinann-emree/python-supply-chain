from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return "Bu guvenli bir PYTHON konteyneridir.şimdi imzalama olduğu anlaşılsın diye yeni bir şey yapıyorum"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)