import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:multi_expansion_card/multi_expansion_card.dart';

void main() {
  testWidgets('MultipleExpansionCard expands and collapses correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MultipleExpansionCard(
            titles: [
              Text('Card 1'),
              Text('Card 2'),
            ],
            childrens: [
              Text('Content 1'),
              Text('Content 2'),
            ],
            initialExpanded: {0: true},
          ),
        ),
      ),
    );

    // Check if first card's content is visible
    expect(find.text('Content 1'), findsOneWidget);
    expect(find.text('Content 2'), findsNothing);

    // Tap the second title to expand it
    await tester.tap(find.text('Card 2'));
    await tester.pumpAndSettle();

    // Check second card's content is visible and first is collapsed
    expect(find.text('Content 1'), findsNothing);
    expect(find.text('Content 2'), findsOneWidget);
  });
}
