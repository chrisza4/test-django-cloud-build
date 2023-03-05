from django.test import TestCase


class SanityTest(TestCase):
    def test_sanity_can_calculate(self):
        self.assertEqual(1 + 1, 2)
