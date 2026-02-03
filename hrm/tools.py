import random
import datetime
# from jalali_date import datetime2jalali, date2jalali

hashs = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'

def serial(count=20):
    return ''.join(random.sample(hashs, count))

def date():
    # datetime2jalali(datetime.datetime.now())
    # return datetime2jalali(datetime.datetime.now()).strftime('%y/%m/%d')
    return datetime.datetime.now().strftime('%Y-%m-%d')

def time():
    # return datetime2jalali(datetime.datetime.now()).strftime('%H:%M')
    return datetime.datetime.now().strftime('%H:%M')