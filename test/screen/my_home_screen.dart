import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tdd_by_breaking/screen/my_home_screen.dart';

void main() {
  testWidgets("My Home page", (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(
      const MaterialApp(
        home: MyHomePage(),
      ),
    );
    final titleFinder = find.text('Hello World');
    expect(titleFinder, findsOneWidget);
    expect(find.byType(Center), findsOneWidget);
    final scaffold = widgetTester.widget<Scaffold>(
      find.byType(Scaffold),
    );

    expect(scaffold.backgroundColor, Colors.black);
  });
}
