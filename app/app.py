from flask import Flask
from config.settings import Config
import instances
def create_app():
    app = Flask(__name__)
    app.config.from_object(Config)
    app.config.from_pyfile('instances.settings.production')
    @app.route('/')
    def home():
        return """
        something useful to test  
        """
    return app