from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    return HttpResponse("Welcome to your Django App!")


# Create your views here.
