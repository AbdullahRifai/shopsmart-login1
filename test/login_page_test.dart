import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project2/Login_Page.dart';

void main() {
  testWidgets('Login page shows email and password fields', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginPage(),
      ),
    );

    expect(find.byType(TextField), findsWidgets);
    expect(find.text('Login'), findsOneWidget);
  });
}
