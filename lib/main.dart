import 'package:fightcoronax/splash.dart';
import 'package:flutter/material.dart';
//import 'MyHomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(),
    );
  }
}
