from flask import Flask
import os
app = Flask(__name__)

@app.route("/")
def hello():
    ver = os.env.get('VERSION', 'undef')
    return "Hello World! Version: {}".format(ver)

if __name__ == "__main__":
    app.run(host='0.0.0.0')
