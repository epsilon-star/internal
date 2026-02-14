from django.http import JsonResponse
from django.shortcuts import render,redirect
import math

from django.contrib.auth import authenticate
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from rest_framework.authtoken.models import Token

from . import models

import jdatetime

# Create your views here.
def editLateAccept(request):
    if request.method == 'POST':
        buff = models.EntExt.objects.get(exid=request.POST.get('exid'))
        buff.late_accept = True if request.POST.get('lateBool') == 'on' else False
        buff.save()
        return redirect('hrm_home')
        # return JsonResponse({
        #     'success':True,
        #     'exid': request.POST.get('exid'),
        #     'late_accept':request.POST.get('lateBool'),
        # })

def addEnterTime(request):
    if request.method == 'POST':
        models.EntExt.objects.create(
            employee = models.Employee.objects.get(eid=request.POST.get('employee')),
            enter = request.POST.get('entryDate'),
            enter_time = request.POST.get('entryTime'),
            exit = request.POST.get('entryDate'),
        )
        return redirect('hrm_home')

def addExitTime(request):
    if request.method == 'POST':
        buff = models.EntExt.objects.get(
            exid=request.POST.get('exid')
        )
        buff.exit_time = request.POST.get('exteryTime')
        buff.save()
        return redirect('hrm_home')

def home(request):
    emplos = models.Employee.objects.all()
    entext = models.EntExt.objects.all()

    emps = []
    entes = []

    for emp in emplos:
        if not emp.e_user.name == 'founder':
            emps.append({"name":emp.__str__(),'eid': emp.eid})

    for ex in entext:
        enter_time = str(ex.enter_time)
        late_time = ((int(enter_time.split(':')[0]) * 60 )+(int(enter_time.split(':')[1])))-(90*6 + 30)
        late_time_cal = f"{late_time//60:02}:{late_time%60:02}" if late_time > 0 else -1
        entes.append({
            'exid': ex.exid,
            'name':ex.employee.__str__(),
            'day':ex.enter,
            'enter_date': ex.enter,
            'enter_time': ex.enter_time,
            'late': 0 if late_time <= 0 else 1,
            'late_accept': ex.late_accept,
            'late_time': late_time_cal,
            'exit_date': ex.exit,
            'exit_time': ex.exit_time,
        })

    entes.sort(key=lambda x:(x['enter_date'],x['enter_time']),reverse=True)

    datas = {
        'today_date': jdatetime.date.today(),
        'emps': emps,
        'entes': entes
    }

    return render(request,'hrm/index.html',datas)


@api_view(["POST"])
def login_view(request):
    username = request.data.get("username")
    password = request.data.get("password")

    if not username or not password:
        return JsonResponse(
            {"error": "Username and password required"},
            status=status.HTTP_400_BAD_REQUEST
        )

    # user = authenticate(username=username, password=password)
    try:
        user = models.Employee.objects.get(username=username,password=password)
    except:
        user = None

    if user is None:
        return JsonResponse(
            {"error": "Invalid credentials"},
            status=status.HTTP_401_UNAUTHORIZED
        )

    # token, _ = Token.objects.create(user=user)
    token = "asdinabisdivuiasiodjpkl"

    return JsonResponse({
        "token": token,
        "user": {
            "id": user.eid,
            "username": user.username,
            "is_staff": True if user.e_user.name == 'founder' or user.e_user.name == 'management' else False,
        }
    })