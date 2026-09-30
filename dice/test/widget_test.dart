import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dice/main.dart';

void main() {
  testWidgets('Dice page shows two dice and a roll button',
      (WidgetTester tester) async {
    await tester.pumpWidget(const DiceApp());

    expect(find.text('Roll Dice'), findsOneWidget);
    expect(find.byType(Image), findsNWidgets(2));

    await tester.tap(find.text('Roll Dice'));
    await tester.pump();

    expect(find.byType(Image), findsNWidgets(2));
  });
}
