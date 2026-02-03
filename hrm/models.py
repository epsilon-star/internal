from django.db import models
from django_jalali.db import models as jmodels

from . import tools

# Create your models here.

class User(models.Model):
    uid = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100,null=False,blank=False)

    def __str__(self):
        return self.name

class Employee(models.Model):
    eid = models.AutoField(primary_key=True)
    e_user = models.ForeignKey(User, on_delete=models.CASCADE,null=True)
    username = models.CharField(max_length=50,null=False,blank=False,default='NULL_FIELD')
    password = models.CharField(max_length=255,null=False,blank=False,default='NULL_FIELD')
    email = models.EmailField(max_length=255,null=True,blank=True)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    e_serial = models.CharField(
        max_length=20,
        unique=True,
        null=False,
        default=tools.serial
    )

    ip_address = models.GenericIPAddressField(null=True,blank=True)
    desktop = models.CharField(max_length=50,null=True,blank=True)

    def __str__(self):
        return self.first_name + ' ' + self.last_name

class EntExt(models.Model):
    exid = models.AutoField(primary_key=True)
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE,null=True)
    enter = jmodels.jDateField()
    exit = jmodels.jDateField(null=True,blank=True)
    # enter = models.DateField(null=False,blank=False,default=tools.date)
    enter_time = models.TimeField(null=False,blank=False,default=tools.time)
    # exit = models.DateField(null=True,blank=True)
    exit_time = models.TimeField(null=True,blank=True)
    late_accept = models.BooleanField(default=False)
    absent = models.BooleanField(default=False)