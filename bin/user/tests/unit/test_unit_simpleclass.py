#    Copyright (c) 2025 Rich Bell <bellrichm@gmail.com>
#
#    See the file LICENSE.txt for your full rights.
#

import unittest

import user.simpleclass


class TestUnitSimpleClass(unittest.TestCase):
    def test_return_first_value(self):
        print("start")

        SUT = user.simpleclass.SimpleClass()

        first_value = 'foo'
        second_value = 'bar'
        return_value = SUT.return_first_value(first_value, second_value)

        self.assertEqual(return_value, first_value)

        print("end")


if __name__ == '__main__':
    test_suite = unittest.TestSuite()
    test_suite.addTest(TestUnitSimpleClass('test_return_first_value'))
    unittest.TextTestRunner().run(test_suite)

    # unittest.main(exit=False)
