import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tdd_by_breaking/main.dart';
import 'package:tdd_by_breaking/screen/my_home_screen.dart';

void main() {
  testWidgets("MyRun App i wanted to make gerneral theme out it",
      (widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());

    final titleFinder = find.text('Flutter Demo');
    final themeWidget = widgetTester.widget<Theme>(find.byType(Theme));

    expect(titleFinder, findsNothing);
    expect(themeWidget.data.primaryColor, Colors.blue);
  });
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
