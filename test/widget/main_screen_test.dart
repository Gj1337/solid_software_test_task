import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test_task/lib/presentation/main_screen/main_screen.dart';

void main() {
  testWidgets('Color changing test', (tester) async {
    Color? getColor() {
      final decoratedBox =
          tester.widget(find.byType(DecoratedBox)) as DecoratedBox;
      final decoration = decoratedBox.decoration as BoxDecoration;
      final color = decoration.color;

      return color;
    }

    const widget = MaterialApp(home: MainScreen());

    await tester.pumpWidget(widget);

    //First tap to switch default color
    await tester.tap(find.byType(InkWell));
    await tester.pumpAndSettle();

    await tester.tap(find.byType(InkWell));
    await tester.pumpAndSettle();
    final firstColor = getColor();

    await tester.tap(find.byType(InkWell));
    await tester.pumpAndSettle();
    final newColor = getColor();

    expect(firstColor != newColor, true);
  });
}
