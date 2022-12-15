from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, Huberk Hubert du heisl!</p>"

if __name__ == "__main__":
    app.run(debug=True)