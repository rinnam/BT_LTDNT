import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:magic_8_ball/main.dart';

void main() {
  testWidgets('Magic 8 Ball displays image and button',
      (WidgetTester tester) async {
    await tester.pumpWidget(const Magic8BallApp());

    expect(find.text('Ask the Magic 8 Ball'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('Tapping button changes the image', (WidgetTester tester) async {
    await tester.pumpWidget(const Magic8BallApp());

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(find.byType(Image), findsOneWidget);
  });
}
