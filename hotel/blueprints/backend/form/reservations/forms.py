from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, BooleanField, SubmitField, DateField, validators, TextAreaField,IntegerField,SelectField
from wtforms.validators import DataRequired, InputRequired, Email,Required


class ReservationForm(FlaskForm):
    schedule_id = StringField(validators=[Required(message="Please Select Schedule")])
    passenger_id = StringField(validators=[Required(message="Please Select Passenger")])
    datetime = StringField(validators=[Required(message="Please Select Date and Time")])
    quantity = StringField(validators=[Required(message="Please Enter quantity")])
    discount = StringField('discount')
    amount = StringField(validators=[Required(message="Please Enter amount")])
    submit = SubmitField('Submit')