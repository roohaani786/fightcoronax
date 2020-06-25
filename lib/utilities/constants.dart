import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const kAppBarMainTitle = 'Coronavirus Tracker';

final kNumberFormat = NumberFormat('#,##0');

final kColourPrimary = Colors.red[800];
final kColourBackground = Colors.lightGreen[200];

final kColourPieSick = const Color(0xFF3700B3);
final kColourPieRecovered = const Color(0xFF03DAC6);
final kColourPieDead = Colors.red;
final kColourPietoday = Colors.yellowAccent;

final kColourAlertBackground = Colors.red[700];

const kTextStyleAppBar = TextStyle(
  fontFamily: 'Courier-Prime',
);
const kTextStyleDate = TextStyle(
  fontFamily: 'Courier-Prime',
  fontSize: 21.0,
);
const kTextStyleLocationLabel = TextStyle(
  fontFamily: 'Courier-Prime-Bold',
  fontSize: 32.0,
);
const kTextStyleTotalLabel = TextStyle(
  fontFamily: 'Courier-Prime',
  fontSize: 21.0,
  color: Colors.white,
);
const kTextStyleTotalNumber = TextStyle(
  fontFamily: 'Courier-Prime-Bold',
  fontSize: 32.0,
  color: Colors.cyanAccent,
);
const kTextStyleStats = TextStyle(
  fontFamily: 'Courier-Prime-Bold',
  fontSize: 21.0,
  color: Colors.white,
);
const kTextStyleAlertTitle = TextStyle(
  fontFamily: 'Courier-Prime-Bold',
  fontSize: 27,
  color: Colors.white,
);
const kTextStyleAlertText = TextStyle(
  fontFamily: 'Courier-Prime',
  fontSize: 18,
  color: Colors.white,
);
const kTextStyleAlertButton = TextStyle(
  fontFamily: 'Courier-Prime-Bold',
  fontSize: 22,
  color: Colors.white,
);
const kTextStyleTextField = TextStyle(
  fontFamily: 'Courier-Prime-Bold',
  fontSize: 21,
  color: Colors.white
);
const kTextStyleTextFieldHint = TextStyle(
  fontFamily: 'Courier-Prime',
  fontSize: 21,
);

final kInputDecorationTextField = InputDecoration(
  hintText: 'Enter country name:',
  hintStyle: kTextStyleTextFieldHint,
  filled: true,
  fillColor: Colors.lightGreen[300],
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide.none,
  ),
);