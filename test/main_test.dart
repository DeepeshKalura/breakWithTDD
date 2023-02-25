import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:tdd_by_breaking/main.dart';

class MockImageObserver extends Mock {}

void main() {
  testWidgets("MyRun App i wanted to make gerneral theme out it",
      (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());

    final titleFinder = find.text('Flutter Demo');
    final themeWidget = widgetTester.widget<Theme>(find.byType(Theme));

    expect(titleFinder, findsNothing);
    expect(themeWidget.data.primaryColor, Colors.blue);
  });
}
