import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Text widget shows Hello', (WidgetTester tester) async {
    // Step 3: Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Text('Hello'),
      ),
    );

    // Step 4: Verify "Hello" is displayed
    expect(find.text('Hello'), findsOneWidget);
  });
}
