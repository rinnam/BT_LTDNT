import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:im_rich/main.dart';

void main() {
  testWidgets('IAmRich app displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('I Am Rich'), findsNWidgets(2));
    expect(find.byType(Image), findsOneWidget);
  });
}
