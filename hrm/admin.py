from django.contrib import admin

from hrm.models import *


# Register your models here.
@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = ('uid','name')
    list_filter = ('name',)

@admin.register(Employee)
class EmployeeAdmin(admin.ModelAdmin):
    list_display = ('eid','first_name','last_name','username','e_user','e_serial')
    list_filter = ('first_name','last_name','username','e_serial')

@admin.register(EntExt)
class EntExtAdmin(admin.ModelAdmin):
    list_display = ('exid','employee','enter','enter_time','exit','exit_time','late_accept','absent')
    list_filter = ('employee','enter','exit')
