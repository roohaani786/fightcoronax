import 'package:flutter/material.dart';

class ColourBox extends StatelessWidget {
  final Color colour;

  ColourBox({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2, 0, 8, 2),
      width: 22,
      height: 20,
      color: colour,
    );
  }
}