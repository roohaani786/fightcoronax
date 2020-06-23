import 'package:flutter/material.dart';

import 'appbar.dart';
import 'bottomappbar.dart';
import 'drawer.dart';

class Symptomps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: BaseAppBar(
          title: Text("hekko"),
          appbar: AppBar(),
        ),
        drawer: MyDrawer(),
        bottomNavigationBar: MyBottomNavigationBar(),

        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,


              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(top: 30.0,left: 35.0,right: 35.0),
                  child: Text('Symptomps of CoronaVirus',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,style:  TextStyle(color: Colors.cyanAccent,fontSize: 25.0 ,fontWeight: FontWeight.w700),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                  child: Text('Signs and symptoms of COVID-19 may appear 2 to 14 days after exposure and can include: ', textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,style:  TextStyle(color: Colors.white,fontSize: 18.0 ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                  child: Container(
                    width: 60.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                          Radius.circular(50)),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Fever', textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,style:  TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w800 ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                  child: Container(
                    width: 60.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(
                          Radius.circular(50)),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Cough', textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,style:  TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w800 ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                  child: Container(
                    width: 200.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.all(
                          Radius.circular(50)),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Shortness of Breath', textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,style:  TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w800 ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                  child: Container(
                    width: 60.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.all(
                          Radius.circular(50)),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Aches', textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,style:  TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w800 ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                  child: Container(
                    width: 120.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)),
                      ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Runny Nose', textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,style:  TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w800 ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                  child: Container(
                    width: 120.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)),
                       ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Sore Throat', textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,style:  TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w800 ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25.0,left: 35.0,right: 35.0),
                  child: Text('The severity of COVID-19 symptoms can range from very mild to severe.', textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,style:  TextStyle(color: Colors.white,fontSize: 18.0 ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 35.0,right: 35.0),
                  child: Text('Some people may have no symptoms at all.', textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,style:  TextStyle(color: Colors.redAccent,fontSize: 18.0,fontWeight: FontWeight.w900 ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 35.0,right: 35.0),
                  child: Text('People who are older or who have existing chronic medical conditions, such as heart disease, lung disease or diabetes, or who have compromised immune systems may be at higher risk of serious illness.This is similar to what is seen with other respiratory illnesses, such as influenza.', textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 8,style:  TextStyle(color: Colors.white,fontSize: 18.0 ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 30.0,left: 35.0,right: 35.0),

                ),




              ],
            ),
          ),
        )
    );
  }

}