from flask import Flask, render_template
import pandas as pd
import os

app = Flask(__name__)
port = int(os.environ.get("PORT", 5000))


@app.route("/")
def main():
    return render_template('HelloWorld_site.html')


def create_empty_csv():
    pd.DataFrame(columns=['col1', 'col2']).to_csv('DATA/Test.csv', index=False)


if __name__ == "__main__":
    print('Here will be instructions')

#   create_empty_csv()
    app.run(debug=True, host="0.0.0.0", port=port)
