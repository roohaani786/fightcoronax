import 'package:fightcoronax/AboutApp.dart';
import 'package:fightcoronax/symptomps.dart';
import 'package:flutter/material.dart';


class BaseAppBar extends StatelessWidget implements PreferredSizeWidget{

  final Text title;
  final AppBar appbar;
  final List<Widget> widgets;


  const BaseAppBar({Key key, this.title,this.appbar,this.widgets}) : super(key: key);

  //title




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text("Fight Corona",style: TextStyle(fontSize: 22.0,fontStyle: FontStyle.normal,letterSpacing: 3.0,),textAlign: TextAlign.center,

        ),
      ),

      //FlexibleSpace

      flexibleSpace :
      Container(

        decoration: BoxDecoration(

          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.green,
          ]),
          borderRadius: BorderRadius.circular(40.0),
          boxShadow: [
            new BoxShadow(blurRadius: 10.0,color: Colors.greenAccent),
          ],

        ),
      ),

      //actions

      actions:
      <Widget>[
        IconButton(
          icon:  Icon(Icons.healing),
          onPressed: (){
            // Do something
            Navigator.push(context, MaterialPageRoute(builder: (context) => Symptomps()));
          },
        ),

        IconButton(
          icon:  Icon(Icons.info_outline,color: Colors.white,),
          onPressed: (){
            // Do something
            Navigator.push(context, MaterialPageRoute(builder: (context) => AboutApp()));
          },
        )


      ],

      //AppbarBackgroundColor

      backgroundColor: Colors.black,

    );
  }
  @override
  Size get preferredSize => new Size.fromHeight(appbar.preferredSize.height);
}