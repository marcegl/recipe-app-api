from django import TestCase
from django.contrib.auth import get_user_model


class ModelTests(TestCase):
    def test_create_user_with_email_successful(self):
        """test creating new user with email"""
        email = 'test@test.com'
        password = 'pass123'
        user = get_user_model().objects.create_user()
