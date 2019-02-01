from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, BooleanField, SubmitField, DateField, validators, TextAreaField,TextField
from wtforms.validators import DataRequired, InputRequired
from extension import db


class SearchForm(FlaskForm):
    search = StringField('search', [DataRequired()])
    submit = SubmitField('Search',
        render_kw={'class': 'btn btn-success btn-block'})

