from django.urls import path

from . import views

urlpatterns = [
    path('',views.home,name='hrm_home'),
    path('enter/',views.addEnterTime,name='addEnterTime'),
    path('exit/',views.addExitTime,name='addExitTime'),
    path('late/',views.editLateAccept,name='editLateAccept'),
    # path('test',views.test,name='test'),
]