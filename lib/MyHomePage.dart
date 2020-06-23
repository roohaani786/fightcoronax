import 'package:fightcoronax/appbar.dart';
import 'package:fightcoronax/drawer.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'bottomappbar.dart';



////////////////////////////////////////////////////////////////////

Future<Album> fetchAlbum() async {
  final response =
  await http.get('https://coronavirus-19-api.herokuapp.com/all');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int cases;
  final int deaths;
  final int recovered;

  Album({this.cases, this.deaths, this.recovered});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      cases: json['cases'],
      deaths: json['deaths'],
      recovered: json['recovered'],
    );
  }
}


///////////////////////////////////////////////////////////////////


class MyHomePage extends StatefulWidget{
  MyHomePage({Key key}) : super(key:key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }


  @override

  Widget build(BuildContext context) {
    // TODO: implement build


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: BaseAppBar(
          title: Text("hekko"),
          appbar: AppBar(),

        ),

      //ScaffoldBackgroundColor

        backgroundColor: Colors.black,


      //BottomNavigationBar

        bottomNavigationBar: MyBottomNavigationBar(),

      //Drawer

        drawer: MyDrawer(),

      //Body

        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {

                return Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0,left:50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: <Widget>[
                            Container(
                              height: 30.0,
                              width: 260.0,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(50)),
                                  ),
                              child: Text("Global Coronavirus cases",textAlign: TextAlign.center,style:
                              TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),),
                            ),

                            Padding(padding: const EdgeInsets.only(top: 60.0)),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[


                                Container(
                                  height: 100.0,

                                  width: 100.0,

                                  alignment:Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.orangeAccent,
                                            offset: Offset(4.0, 4.0),
                                            blurRadius: 5.0,
                                            spreadRadius: 0.0),
                                        BoxShadow(
                                            color: Colors.orangeAccent,
                                            offset: Offset(-4.0, -4.0),
                                            blurRadius: 5.0,
                                            spreadRadius: 0.0),
                                      ]),
                                  child: Text("Cases",style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),),
                                ),

                                Padding(padding: const EdgeInsets.only(left: 50.0)),


                                Container(
                                  height: 100.0,

                                  width: 100.0,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.redAccent,
                                            offset: Offset(4.0, 4.0),
                                            blurRadius: 10.0,
                                            spreadRadius: 1.0),
                                        BoxShadow(
                                            color: Colors.orangeAccent,
                                            offset: Offset(-4.0, -4.0),
                                            blurRadius: 10.0,
                                            spreadRadius: 1.0),
                                      ]),
                                  alignment:Alignment.center,
                                  child: Text(snapshot.data.cases.toString(),style:
                                  TextStyle(
                                      color: Colors.cyanAccent
                                  ),),
                                ),
                              ],
                            ),

                            Padding(padding: const EdgeInsets.only(top: 40.0)),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 100.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.green,
                                            offset: Offset(4.0, 4.0),
                                            blurRadius: 5.0,
                                            spreadRadius: 0.0),
                                        BoxShadow(
                                            color: Colors.green,
                                            offset: Offset(-4.0, -4.0),
                                            blurRadius: 5.0,
                                            spreadRadius: 0.0),
                                      ]),
                                  alignment:Alignment.center,
                                  child: Text("Deaths",style:
                                  TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                  ),),
                                ),


                                Padding(padding: const EdgeInsets.only(left: 50.0)),
                                Container(
                                  height: 100.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.redAccent,
                                            offset: Offset(4.0, 4.0),
                                            blurRadius: 10.0,
                                            spreadRadius: 1.0),
                                        BoxShadow(
                                            color: Colors.orangeAccent,
                                            offset: Offset(-4.0, -4.0),
                                            blurRadius: 10.0,
                                            spreadRadius: 1.0),
                                      ]),
                                  alignment:Alignment.center,
                                  child: Text(snapshot.data.deaths.toString(),style:
                                  TextStyle(
                                    color: Colors.cyanAccent,
                                  ),),
                                ),
                              ],
                            ),


                            Padding(padding: const EdgeInsets.only(top: 40.0)),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(

                                  height: 100.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.blueAccent,
                                            offset: Offset(4.0, 4.0),
                                            blurRadius: 5.0,
                                            spreadRadius: 0.0),
                                        BoxShadow(
                                            color: Colors.blueAccent,
                                            offset: Offset(-4.0, -4.0),
                                            blurRadius: 5.0,
                                            spreadRadius: 0.0),
                                      ]),
                                  alignment:Alignment.center,
                                  child: Text("Recovered",style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),),
                                ),

                                Padding(padding: const EdgeInsets.only(left: 50.0)),

                                Container(
                                  height: 100.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.redAccent,
                                            offset: Offset(4.0, 4.0),
                                            blurRadius: 10.0,
                                            spreadRadius: 1.0),
                                        BoxShadow(
                                            color: Colors.orangeAccent,
                                            offset: Offset(-4.0, -4.0),
                                            blurRadius: 10.0,
                                            spreadRadius: 1.0),
                                      ]),
                                  alignment:Alignment.center,
                                  child: Text(snapshot.data.recovered.toString(),style:
                                  TextStyle(
                                      color: Colors.cyanAccent
                                  ),),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );


              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");

              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
      theme: ThemeData(fontFamily: 'Sen',
      ),
    );
  }
}



