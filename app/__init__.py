from flask import Flask


def create_app(test_config=None):
    app = Flask(__name__)
    app.config.from_mapping(
        SECRET_KEY='dev'
    )

    @app.route("/")
    def homepage():
        return "Hello Travis"

    return app
