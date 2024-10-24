from django.shortcuts import render

def mundoviews(request):
    return render(request,'index.html')