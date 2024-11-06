// test/acceptance_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_tests/main.dart' as app;
import 'package:flutter/material.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Acceptance test for add function in UI',
      (WidgetTester tester) async {
    // Start the app
    app.main();
    await tester.pumpAndSettle();

    // Step 1: Enter numbers for addition
    await tester.enterText(find.byKey(const Key('input1')), '5');
    await tester.enterText(find.byKey(const Key('input2')), '2');

    // Step 2: Tap the Add button
    await tester.tap(find.byKey(const Key('addButton')));
    await tester.pumpAndSettle();

    // Step 3: Verify the result is displayed correctly
    expect(find.text('Result: 7'), findsOneWidget);
  });
}
