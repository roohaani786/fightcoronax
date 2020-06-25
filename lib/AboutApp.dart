import 'package:fightcoronax/appbar.dart';
import 'package:fightcoronax/bottomappbar.dart';
import 'package:fightcoronax/drawer.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: BaseAppBar(
        title: Text("hekko"),
        appbar: AppBar(),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavigationBar(),

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 60.0)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Icon(Icons.info_outline,color: Colors.white,),
                  Text("About the App",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15.0,
                    color: Colors.pinkAccent,
                  ),),
                ],
              )
            ),



            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: Text("Fight Corona is an application developed for monitoring different metrics related to Coronavirus such as cases deaths and recovered patients. This App also helps in awareness towards symptoms and mythbusters related to CoronaVirus. ",textAlign: TextAlign.justify,style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),),
            ),

            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.info_outline,color: Colors.cyanAccent,),
                    Text("About the Developer",style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15.0,
                      color: Colors.lightBlueAccent,
                    ),),
                  ],
                )
            ),



            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: Text("This application is developed by Aman Khan Roohaani, a technical geek specializing in Application and web development. He has 1 year of professional experience in building Flutter apps.",maxLines:4,textAlign: TextAlign.justify,style: TextStyle(
                  fontWeight: FontWeight.w600,
                color: Colors.white,
              ),),
            ),


            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.contact_mail,color: Colors.yellow,),
                    Text("Contact the Developer",style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15.0,
                      color: Colors.lightGreenAccent,
                    ),),
                  ],
                )
            ),



            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: Text("Contact the developer at aman.khan@procohat.com OR admin@quarantinecourses.com",maxLines:4,textAlign: TextAlign.justify,style: TextStyle(
                  fontWeight: FontWeight.w600,
                color: Colors.white,
              ),),
            )





          ],
        ),
      ),
    );
  }

}