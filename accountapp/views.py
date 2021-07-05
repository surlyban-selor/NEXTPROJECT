from django.http import request, HttpResponse
from django.shortcuts import render

# Create your views here.


def hello_world(request):
    return render(request, 'accountapp/hello_world.html')