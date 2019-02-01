from flask import Blueprint, jsonify, render_template, request, redirect, url_for,session,flash
from blueprints.backend.model.schedules.models import Schedule
from blueprints.backend.model.rooms.models import Rooms
from blueprints.frontend.reservationform.forms import SearchForm


from extension import db
import os

reserve = Blueprint('reserve', __name__, template_folder="templates")

@reserve.route('/reserve', methods=['GET','POST'])
def reserve_index():
	rooms = Rooms.query.all()
	return render_template('reserve/reserve.html',rooms=rooms)

@reserve.route('/search', methods=['GET','POST'])
def search():
    form = SearchForm()
    if request.method == 'POST' and form.validate_on_submit():
        return redirect((url_for('search_results', query=form.search.data)))  # or what you want

@reserve.route('/search_results/<query>')
def search_results(query):
  results = Schedule.query.all()

  return render_template('reserve.html', query=query, results=results)

@reserve.route('/schedule')
def reserve_schedule():
	schedules = Schedule.query.all()
	return render_template('schedule/schedule.html',schedules=schedules)

schedule = Blueprint('schedule', __name__, template_folder="templates")

