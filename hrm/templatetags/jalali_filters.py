import jdatetime
from django import template

register = template.Library()

PERSIAN_WEEKDAYS = [
    'جمعه',
    'شنبه',
    'یکشنبه',
    'دوشنبه',
    'سه‌شنبه',
    'چهارشنبه',
    'پنجشنبه',
]

@register.filter
def jalali_weekday(date):
    if not date:
        return ''
    jdate = jdatetime.date.fromgregorian(date=date)
    return PERSIAN_WEEKDAYS[jdate.weekday()]
