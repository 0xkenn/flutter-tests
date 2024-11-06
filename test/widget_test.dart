// test/widget_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soft_e2/add.dart'; // Import the addNum function
import 'package:soft_e2/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  // Add a separate unit test for addNum
  test('add function adds two numbers correctly', () {
    expect(add(5, 2), equals(7));
  });

  test('multiplies two numbers correctly', () {
    expect(multiply(2, 4), equals(8), reason: '2 x 4 should be 8');
  });
}
