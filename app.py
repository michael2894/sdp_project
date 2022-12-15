from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, Hubwerk Hubert du heisl!\n\rMichaels, schreib mein Naum richtig, du Scheißküwe!</p>"

if __name__ == "__main__":
    app.run(debug=True)
