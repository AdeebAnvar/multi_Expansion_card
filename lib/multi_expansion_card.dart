import 'package:flutter/material.dart';

/// A widget that displays multiple expandable [ExpansionTile] widgets in a list.
///
/// Only one tile can be expanded at a time. When a tile is expanded,
/// the previously expanded tile will collapse automatically.
///
/// ### Example
/// ```dart
/// MultipleExpansionCard(
///   titles: [
///     Text('Card 1'),
///     Text('Card 2'),
///   ],
///   childrens: [
///     Text('Content 1'),
///     Text('Content 2'),
///   ],
/// )
/// ```
///
/// For a complete working example, see the `example/` directory.
class MultipleExpansionCard extends StatefulWidget {
  /// Creates a [MultipleExpansionCard].
  ///
  /// - [titles] and [childrens] must be the same length.
  /// - [initialExpanded] specifies which tile should start expanded.
  const MultipleExpansionCard({
    super.key,

    /// Widgets to show as titles for each expansion card.
    required this.titles,

    /// Widgets to show as children inside each expansion card.
    required this.childrens,

    /// The index of tiles to be expanded initially.
    /// Example: `{0: true}` will expand the first tile.
    this.initialExpanded = const {0: false},
  });

  /// The list of title widgets.
  final List<Widget> titles;

  /// The list of content widgets.
  final List<Widget> childrens;

  /// A map of indices and expansion states.
  final Map<int, bool> initialExpanded;

  @override
  State<MultipleExpansionCard> createState() => _MultipleExpansionCardState();
}

class _MultipleExpansionCardState extends State<MultipleExpansionCard> {
  /// Currently expanded tile index.
  int? expandedIndex;

  /// List of [ExpansibleController] to manage tile state.
  List<ExpansibleController> controllers = [];

  @override
  void initState() {
    super.initState();
    controllers = List.generate(
      widget.childrens.length,
      (index) => ExpansibleController(),
    );

    for (int index in widget.initialExpanded.keys) {
      if (widget.initialExpanded[index] == true) {
        expandedIndex = index;
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.titles.length != widget.childrens.length) {
      throw Exception('titles length and childrens length must be equal');
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.childrens.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ExpansionTile(
            key: Key(index.toString()),
            controller: controllers[index],
            initiallyExpanded: expandedIndex == index,
            title: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: widget.titles[index],
            ),
            onExpansionChanged: (isExpanded) {
              if (isExpanded) {
                for (int i = 0; i < controllers.length; i++) {
                  if (i != index) {
                    controllers[i].collapse();
                  }
                }
                setState(() {
                  expandedIndex = index;
                });
              } else {
                setState(() {
                  expandedIndex = null;
                });
              }
            },
            tilePadding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            collapsedBackgroundColor: Colors.white,
            childrenPadding: const EdgeInsets.all(6),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            children: [widget.childrens[index]],
          ),
        );
      },
    );
  }
}
