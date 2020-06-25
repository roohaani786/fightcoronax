//import 'package:fight_corona/AboutApp.dart';
import 'package:fightcoronax/AboutApp.dart';
import 'package:fightcoronax/MyHomePage.dart';
//import 'package:fightcoronax/Stateanddistrictwise.dart';
import 'package:fightcoronax/mythbusters.dart';
import 'package:fightcoronax/symptomps.dart';
import 'package:flutter/material.dart';
import 'casesindia.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.black45,//This will change the drawer background to blue.
            //other styles
          ),
      child: Drawer(

          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,

            children: <Widget>[
              DrawerHeader(
                child: Text('#fightcorona',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(35.0),
                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.green,
                    ])
                ),
              ),
              ListTile(
                leading: Icon(Icons.group_work,color: Colors.cyanAccent,),
                title: Text('Global CoronaVirus Cases',style:
                  TextStyle(color: Colors.white),),
                onTap: () {
                  // Update the state of the app.

                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                  // ...
                },
              ),
//            ListTile(
//              leading: Icon(Icons.add_location),
//              title: Text('Country Wide Cases'),
//              onTap: () {
//                // Update the state of the app.
//
//                Navigator.pop(context);
//                // ...
//              },
//            ),

              ListTile(
                leading: Icon(Icons.account_balance,color: Colors.orange,),
                title: Text('Cases in India',style:
                TextStyle(color: Colors.white),),
                onTap: () {
                  // Update the state of the app.

                  Navigator.push(context, MaterialPageRoute(builder: (context) => CasesIndia()));
                  // ...
                },
              ),

              ListTile(
                leading: Icon(Icons.new_releases,color: Colors.redAccent,),
                title: Text('MythBusters',style:
                TextStyle(color: Colors.white),),
                onTap: () {
                  // Update the state of the app.

                  Navigator.push(context, MaterialPageRoute(builder: (context) => MythBusters()));
                  // ...
                },
              ),

              ListTile(
                leading: Icon(Icons.local_hospital,color: Colors.green,),
                title: Text('Symptomps of CoronaVirus',style:
                TextStyle(color: Colors.white),),
                onTap: () {
                  // Update the state of the app.

                  Navigator.push(context, MaterialPageRoute(builder: (context) => Symptomps()));
                  // ...
                },
              ),

              ListTile(
                leading: Icon(Icons.info,color: Colors.grey,),
                title: Text('About the App',style:
                TextStyle(color: Colors.white),),
                onTap: () {
                  // Update the state of the app.

                  Navigator.push(context, MaterialPageRoute(builder: (context) =>AboutApp()));
                  // ...
                },
              ),
            ],
          ),
      ),
    );
  }

}


