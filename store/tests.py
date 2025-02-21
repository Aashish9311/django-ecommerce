# from django.test import TestCase

# Create your tests here.

from django.test import TestCase
from django.urls import reverse

class BasicTests(TestCase):
    def test_homepage_status_code(self):
        response = self.client.get(reverse('store'))  # Assuming 'store' is your homepage URL name
        self.assertEqual(response.status_code, 200)

    def test_dummy_case(self):
        self.assertEqual(1 + 1, 2)  # Just a simple test
