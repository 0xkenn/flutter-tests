// test/widget_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/add.dart'; // Adjusted import for add.dart file

void main() {
  // Unit test for the add function
  test('add function correctly adds two numbers', () {
    expect(add(5, 2), equals(7));
    expect(add(-3, 3), equals(0));
    expect(add(0, 0), equals(0));
  });

  // Unit test for the multiply function
  test('multiply function correctly multiplies two numbers', () {
    expect(multiply(2, 4), equals(8));
    expect(multiply(-2, 3), equals(-6));
    expect(multiply(0, 5), equals(0));
  });
}
