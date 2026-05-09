testWidgets('shows error when login pressed with empty fields',
    (WidgetTester tester) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: LoginPage(),
    ),
  );

  // اضغط زر Login
  await tester.tap(find.text('Login'));

  // شغّل إعادة الرسم
  await tester.pump();

  // تأكد أن رسالة الخطأ ظهرت
  expect(find.text('أدخل الإيميل وكلمة المرور'), findsOneWidget);
});