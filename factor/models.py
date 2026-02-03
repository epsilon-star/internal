from django.db import models
from django_jalali.db import models as jmodels

from . import tools

# Create your models here.
class Factor(models.Model):
    fid = models.AutoField(primary_key=True)
    title = models.TextField()
    date = jmodels.jDateField()
    price = models.IntegerField()
    serial = models.CharField(max_length=50,default=tools.serial)