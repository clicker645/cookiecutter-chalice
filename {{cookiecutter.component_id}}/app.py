from chalice import Chalice
import boto3
app = Chalice(app_name='{{cookiecutter.component_id}}')

{% if cookiecutter.debug_mode == "y" %}
app.debug = True
{% else %}
app.debug = False
{% endif %}

@app.route('/')
def index():
    return {'message': '{{cookiecutter.message}}'}

@app.route('/default')
def index():
    return {'default_message': '{{cookiecutter.default_message}}'}
