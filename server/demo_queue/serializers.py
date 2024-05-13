from datetime import date

from rest_framework import serializers
from .models import Service, Counter, Queue, User


class CounterSerializer(serializers.ModelSerializer):
    class Meta:
        model = Counter
        fields = '__all__'


class ServiceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Service
        fields = '__all__'


class QueueSerializer(serializers.ModelSerializer):
    class Meta:
        model = Queue
        fields = '__all__'


class User(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'
