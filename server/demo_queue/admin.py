from django.contrib import admin

# Register your models here.
from demo_queue.models import User, Queue, Counter, Service

admin.site.register(User)
admin.site.register(Queue)
admin.site.register(Counter)
admin.site.register(Service)