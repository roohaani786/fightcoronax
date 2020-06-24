import 'package:flutter/material.dart';
import 'package:fightcoronax/utilities/constants.dart';

import 'colorbox.dart';

class StatsRow extends StatelessWidget {
  final Color colour;
  final String label;
  final int number;
  final double percentage;

  StatsRow({
    @required this.colour,
    @required this.label,
    @required this.number,
    @required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ColourBox(colour: colour),
        Text('$label:', style: kTextStyleStats),
        SizedBox(width: 4),
        Text('${kNumberFormat.format(number)}', style: kTextStyleStats),
        SizedBox(width: 4),

      ],
    );
  }
}