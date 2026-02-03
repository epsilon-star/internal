from django.urls import path

from . import views

urlpatterns = [
    path('', views.home, name='factor_home'),
    path('addfactor/', views.addFactorItem, name='addFactorItem'),
    path('removefactor/', views.removeFactorItem, name='removeFactorItem'),
]