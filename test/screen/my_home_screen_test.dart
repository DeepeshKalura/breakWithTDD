import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:tdd_by_breaking/screen/my_home_screen.dart';

void main() {
  testWidgets('my home screen ...', (tester) async {
    // TODO: Implement test
    testWidgets("My Home page", (WidgetTester widgetTester) async {
      await mockNetworkImagesFor(() => widgetTester.pumpWidget(
            const MaterialApp(
              home: MyHomePage(),
            ),
          ));

      final scaffold = widgetTester.widget<Scaffold>(
        find.byType(Scaffold),
      );
      expect(scaffold.backgroundColor, Colors.black);

      expect(find.text("Mr Image"), findsOneWidget);

      expect(find.text("Image Seen #"), findsOneWidget);

      expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is CachedNetworkImage &&
                widget.imageUrl == 'https://i.redd.it/7xp1i0iwg4ka1.gif',
          ),
          findsOneWidget);

      expect(find.text("Made by"), findsOneWidget);

      expect(find.text("Deepesh Kalura"), findsOneWidget);
    });
  });
}
