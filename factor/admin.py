from django.contrib import admin

from . import models


# Register your models here.
@admin.register(models.Factor)
class FactorAdmin(admin.ModelAdmin):
    list_display = ('fid', 'title', 'date', 'price', 'serial')
    search_fields = ('title','serial')
    list_filter = ('date', 'price')
