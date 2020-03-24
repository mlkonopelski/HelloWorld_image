from flask import Flask, render_template
import pandas as pd

app = Flask(__name__)


@app.route("/")
def main():
    return render_template('HelloWorld_site.html')


def create_empty_csv():
    pd.DataFrame(columns=['col1', 'col2']).to_csv('DATA/Test.csv', index=False)


if __name__ == "__main__":
    print('Here will be instructions')

#   create_empty_csv()
    app.run(host="0.0.0.0", port="8080")