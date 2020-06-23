import 'package:fightcoronax/mythbusters.dart';
import 'package:fightcoronax/symptomps.dart';
import 'package:flutter/material.dart';
import 'MyHomePage.dart';


class  MyBottomNavigationBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(


backgroundColor: Colors.black,

      items: [
        BottomNavigationBarItem(icon:  IconButton(
          icon:  Icon(Icons.home,color: Colors.lightGreenAccent,),
          onPressed: (){
            // Do something
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        ), title: Text('Home',style: TextStyle(color:
        Colors.white,),),),
        BottomNavigationBarItem(icon: IconButton(
          icon:  Icon(Icons.new_releases,color: Colors.deepOrange,),
          onPressed: (){
            // Do something
            Navigator.push(context, MaterialPageRoute(builder: (context) => MythBusters()));
    },
    ), title: Text('MythBusters',style: TextStyle(color:
        Colors.white),)),
        BottomNavigationBarItem(icon: IconButton(
          icon:  Icon(Icons.local_hospital,color: Colors.cyanAccent,),
          onPressed: (){
            // Do something
            Navigator.push(context, MaterialPageRoute(builder: (context) => Symptomps()));
    },
    ), title: Text('Symptoms',style: TextStyle(color:
        Colors.white),)),
      ],
    );
  }

}