import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project2/Login_Page.dart';

void main() {
  testWidgets('Login page renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginPage(),
      ),
    );

    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Create Account'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
  });
}

