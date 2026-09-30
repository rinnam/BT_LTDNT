import 'package:flutter_test/flutter_test.dart';

import 'package:destini/main.dart';

void main() {
  testWidgets('Destini app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const Destini());

    expect(find.text('Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".'), findsOneWidget);
    expect(find.text('I\'ll hop in. Thanks for the help!'), findsOneWidget);
    expect(find.text('Better ask him if he\'s a murderer first.'), findsOneWidget);
  });
}
