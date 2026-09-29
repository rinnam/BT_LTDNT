import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mi_card/main.dart';

void main() {
  testWidgets('Business card smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Nguyễn Văn A'), findsOneWidget);
    expect(find.text('Lập trình viên Flutter'), findsOneWidget);
    expect(find.text('0123 456 789'), findsOneWidget);
    expect(find.text('nguyenvana@email.com'), findsOneWidget);
    expect(find.text('Hà Nội, Việt Nam'), findsOneWidget);
    expect(find.byType(CircleAvatar), findsOneWidget);
    expect(find.byType(Card), findsOneWidget);
  });
}
