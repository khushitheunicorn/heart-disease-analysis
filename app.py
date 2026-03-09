from flask import Flask, render_template

app = Flask(__name__)

# Your Tableau Public URL
TABLEAU_URL = "https://public.tableau.com/views/HeartDiseaseAnalysis_17730078933670/Story1"

@app.route('/')
def index():
    return render_template('index.html', tableau_url=TABLEAU_URL)

if __name__ == '__main__':
    app.run(debug=True, port=5000)