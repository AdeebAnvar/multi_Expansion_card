import 'package:flutter/material.dart';
import 'package:multi_expansion_card/multi_expansion_card.dart';

void main() {
  runApp(const MaterialApp(home: MyExample()));
}

class MyExample extends StatelessWidget {
  const MyExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Multiple Expansion Example')),
      body: const MultipleExpansionCard(
        titles: [
          Text('Card 1'),
          Text('Card 2'),
        ],
        childrens: [
          Text('Content 1'),
          Text('Content 2'),
        ],
      ),
    );
  }
}
