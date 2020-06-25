import 'package:flutter/material.dart';
import 'package:fightcoronax/utilities/constants.dart';
import 'package:fightcoronax/components/statsrow.dart';
class Stats extends StatelessWidget {
  final int sickNumber;
  final int recoveredNumber;
  final int deadNumber;
  final double sickPercentage;
  final double recoveredPercentage;
  final double deadPercentage;
  final int casestoday;

  Stats({
    @required this.sickNumber,
    @required this.recoveredNumber,
    @required this.deadNumber,
    @required this.sickPercentage,
    @required this.recoveredPercentage,
    @required this.deadPercentage,
    @required this.casestoday,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              StatsRow(
                colour: kColourPieSick,
                label: 'Sick',
                number: sickNumber,
                percentage: sickPercentage,
              ),
              StatsRow(
                colour: kColourPieRecovered,
                label: 'Recovered',
                number: recoveredNumber,
                percentage: recoveredPercentage,
              ),
              StatsRow(
                colour: kColourPieDead,
                label: 'Dead',
                number: deadNumber,
                percentage: deadPercentage,
              ),
              StatsRow(
                colour: kColourPietoday,
                label: 'Cases Today',
                number: casestoday,
//                percentage: deadPercentage,
              ),


            ],
          ),

      ],
    );
  }
}