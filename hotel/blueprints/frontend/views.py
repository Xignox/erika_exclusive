from flask import Blueprint, jsonify, render_template, request, redirect, url_for

frontend = Blueprint('frontend', __name__, template_folder="templates")

@frontend.route('/home')
def home_index():
	return 'home'