import 'package:fightcoronax/appbar.dart';
import 'package:fightcoronax/bottomappbar.dart';
import 'package:fightcoronax/drawer.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'components/stack_pieindia.dart';
import 'utilities/stats2.dart';




/////////////////////////////////////////


Future<Album> fetchAlbum() async {
  final response =
  await http.get('https://coronavirus-19-api.herokuapp.com/countries/india');

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
  final String country;
  final int cases;
  final int todayCases;
  final int deaths;
  final int todayDeaths;
  final int recovered;
  final int active;
  final int critical;
  final int casesPerOneMillion;
  final int deathsPerOneMillion;

  Album({this.country, this.cases, this.todayCases, this.deaths, this.todayDeaths, this.recovered, this.active, this.critical, this.casesPerOneMillion, this.deathsPerOneMillion});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        country: json['country'],
        cases: json['cases'],
        todayCases: json['todayCases'],
        deaths: json['deaths'],
        todayDeaths: json['todaydeaths'],
        recovered: json['recovered'],
        active: json['active'],
        critical: json['active'],
        casesPerOneMillion: json['casesperonemillion'],
        deathsPerOneMillion: json['deathsperonemillion']
    );
  }
}



/////////////////////////////////////

class CasesIndia extends StatefulWidget{
  @override
  _CasesIndiaState createState() => _CasesIndiaState();
}

class _CasesIndiaState extends State<CasesIndia> {
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

        //Scaffold Background Color

          backgroundColor: Colors.white10,

        //AppBar

        appBar: BaseAppBar(
          appbar: AppBar(),
        ),

        //BottomNavigationBar

        bottomNavigationBar: MyBottomNavigationBar(),

        //Drawer

        drawer: MyDrawer(),

        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {

                return Padding(
                  padding: const EdgeInsets.only(left: 30.0,top: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 34.0,left:45.0),
                    child: Row(

                      children: <Widget>[

                        Column(

                          mainAxisAlignment: MainAxisAlignment.start,

                          children: <Widget>[
                            Container(
                              height: 35.0,
                              width: 260.0,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)),

                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Coronavirus cases in India",textAlign: TextAlign.center,style:
                                TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0,),
                              child: StackPie(
                                totalNumber: snapshot.data.cases,
//                                    sickNumber: coronavirusService.sickNumber,
                                recoveredNumber: snapshot.data.recovered,
                                deadNumber: snapshot.data.deaths,
                                casestoday: snapshot.data.todayCases,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:40.0,right: 30.0),
                              child: Stats(
                                sickNumber: snapshot.data.cases - snapshot.data.recovered,
                                recoveredNumber: snapshot.data.recovered,
                                deadNumber: snapshot.data.deaths,
                                casestoday: snapshot.data.todayCases,
//                                sickPercentage: coronavirusService.sickPercentage,
//                                recoveredPercentage: coronavirusService.recoveredPercentage,
//                                deadPercentage: coronavirusService.deadPercentage,
                              ),
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


      //Text Font-------------
      ),
      theme: ThemeData(fontFamily: 'Sen',
      ),
      //----------------


    );
  }
}