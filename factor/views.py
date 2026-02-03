from django.shortcuts import render,redirect
import jdatetime
from . import models


# Create your views here.
def removeFactorItem(request):
    if request.method == "POST":
        buff = models.Factor.objects.get(
            fid = request.POST.get("factorID"),
        )
        buff.delete()
        return redirect('factor_home')

def addFactorItem(request):
    if request.method == "POST":
        models.Factor.objects.create(
            title = request.POST.get("factorTitle"),
            date = request.POST.get("factorDate"),
            price = request.POST.get("factorPrice").replace(",","")
        )

        return redirect('factor_home')

def home(request):
    factors = models.Factor.objects.all()
    total_price = 0

    fas = []

    for fat in factors:
        fas.append({
            "fid":fat.fid,
            "title":fat.title,
            "date":fat.date,
            "price":fat.price,
        })
        total_price += fat.price

    fas.sort(key=lambda x:x["date"],reverse=True)

    datas = {
        'today_date': jdatetime.date.today(),
        'factors': fas,
        'total_price': total_price
    }
    return render(request, 'factor/index.html',datas)