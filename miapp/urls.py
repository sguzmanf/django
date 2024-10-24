from django.urls import path
from . import views
urlpatterns = [
    path('', views.mundoviews,name='inicio')
]