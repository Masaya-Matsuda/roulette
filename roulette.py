# coding:utf-8

from bottle import route, run, template, request, response, redirect, post
import random

@route("/")
def index():
    return template("index")


@route('/enter',method = ["POST"])
def enter():
    member = request.POST.getunicode("member_information")
    response.set_cookie("member", member)
    alcohol = request.POST.getunicode("alcohol_information")
    response.set_cookie("alcohol", alcohol)
    return redirect("/information")


@route('/information')
def information():
    member = request.get_cookie("member")
    alcohol = request.get_cookie("alcohol")
    return template("information", member = member, alcohol = alcohol)


@route('/information_decision',method = ["POST"])
def information_decision():
    return redirect('/roulette')


@route('/roulette')
def roulette():
    member = request.get_cookie("member")
    alcohol = request.get_cookie("alcohol")
    member_list = member.split(",")
    alcohol_list = alcohol.split(",")
    chosen_member = random.choice(member_list)
    chosen_alcohol = random.choice(alcohol_list)
    alcohol_volume = random.randint(1,10)
    return template("roulette", chosen_member = chosen_member, chosen_alcohol = chosen_alcohol, alcohol_volume = alcohol_volume)

run(host = 'localhost', port = 8080, reloader = True, debug = True)
