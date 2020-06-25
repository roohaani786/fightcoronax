import 'package:fightcoronax/appbar.dart';
import 'package:fightcoronax/drawer.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'bottomappbar.dart';
import 'components/stack_pie.dart';
import 'components/stats.dart';



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

          appbar: AppBar(),

        ),

        //ScaffoldBackgroundColor

        backgroundColor: Colors.white10,


        //BottomNavigationBar

        bottomNavigationBar: MyBottomNavigationBar(),

        //Drawer

        drawer: MyDrawer(),

        //Body

        body: Padding(
          padding: const EdgeInsets.only(top: 10.0,left: 0.0),
          child: Center(
            child: FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {

                  return Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0,left:15.0),

                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            height: 35.0,
                            width: 260.0,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50)),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Global Coronavirus cases",textAlign: TextAlign.center,style:
                              TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0,left: 10.0),
                            child: StackPie(
                              totalNumber: snapshot.data.cases,
//                                    sickNumber: coronavirusService.sickNumber,
                              recoveredNumber: snapshot.data.recovered,
                              deadNumber: snapshot.data.deaths,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:40.0),


                              child: Stats(
                                sickNumber: snapshot.data.cases - snapshot.data.recovered,
                                recoveredNumber: snapshot.data.recovered,
                                deadNumber: snapshot.data.deaths,
//                                sickPercentage: coronavirusService.sickPercentage,
//                                recoveredPercentage: coronavirusService.recoveredPercentage,
//                                deadPercentage: coronavirusService.deadPercentage,
                              ),

                          ),


//
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
      ),
      theme: ThemeData(fontFamily: 'Sen',
      ),
    );
  }
}



