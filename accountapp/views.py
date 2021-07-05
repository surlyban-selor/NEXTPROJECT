from django.http import request, HttpResponse
from django.shortcuts import render

# Create your views here.


def hello_world(request):
    return HttpResponse('Hello World')