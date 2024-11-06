import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_tests/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Acceptance Test - Button tap displays text',
      (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    // Find button and tap it
    final buttonFinder = find.text('Tap me');
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();

    // Check for expected result
    expect(find.text('Expected Text After Tap'), findsOneWidget);
  });
}
