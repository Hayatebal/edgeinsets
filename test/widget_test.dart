// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edgeinsets/edgeinsets.dart';

void main() {
  testWidgets('shows EdgeInsets examples', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Balila-on Edgeinsets Task4'), findsOneWidget);
    expect(find.text('EdgeInsets.all(30)'), findsOneWidget);
    expect(
      find.text('EdgeInsets.symmetric(horizontal: 40, vertical: 10)'),
      findsOneWidget,
    );
    final symmetricContainer = find.ancestor(
      of: find.text('EdgeInsets.symmetric(horizontal: 40, vertical: 10)'),
      matching: find.byWidgetPredicate(
        (widget) => widget is Container && widget.color == Colors.yellow,
      ),
    );
    expect(symmetricContainer, findsOneWidget);
    expect(
      tester.getSize(symmetricContainer).width,
      closeTo(
        tester.view.physicalSize.width / tester.view.devicePixelRatio,
        0.1,
      ),
    );
    expect(
      tester
          .getCenter(
            find.text('EdgeInsets.symmetric(horizontal: 40, vertical: 10)'),
          )
          .dx,
      closeTo(tester.getCenter(symmetricContainer).dx, 0.1),
    );
    expect(
      find.text('EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)'),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Container &&
            widget.color == Colors.blue &&
            widget.padding ==
                const EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20),
      ),
      findsOneWidget,
    );
    final fromLtrbContainer = find.ancestor(
      of: find.text('EdgeInsets.fromLTRB(10, 20, 30, 40)'),
      matching: find.byWidgetPredicate(
        (widget) => widget is Container && widget.color == Colors.green,
      ),
    );
    expect(fromLtrbContainer, findsOneWidget);
    expect(
      tester.getCenter(fromLtrbContainer).dx,
      closeTo(
        tester.view.physicalSize.width / tester.view.devicePixelRatio / 2,
        0.1,
      ),
    );
  });
}
