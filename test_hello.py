import unittest

from hello import greet


class GreetTests(unittest.TestCase):
    def test_greets_by_name(self):
        self.assertEqual(greet("Ares"), "Hello, Ares!")

    def test_strips_surrounding_whitespace(self):
        self.assertEqual(greet("  Ares  "), "Hello, Ares!")

    def test_empty_name_falls_back_to_stranger(self):
        self.assertEqual(greet(""), "Hello, stranger!")
        self.assertEqual(greet("   "), "Hello, stranger!")


if __name__ == "__main__":
    unittest.main()
