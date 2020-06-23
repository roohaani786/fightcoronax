import 'package:fightcoronax/appbar.dart';
import 'package:fightcoronax/bottomappbar.dart';
import 'package:fightcoronax/drawer.dart';
import 'package:flutter/material.dart';

class MythBusters extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: BaseAppBar(
        appbar: AppBar(),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavigationBar(),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,


            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 35.0,right: 35.0),
                child: Text('MythBusters !', textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,style:  TextStyle(color: Colors.cyanAccent,fontSize: 30.0 ,fontWeight: FontWeight.w700),
                ),
              ),


            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
              child: Text('* Exposing yourself to the sun or to temperatures higher than 25 degree Celcius DOES NOT prevent the coronavirus disease. This is completely misleading.', textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,style:  TextStyle(color: Colors.white,fontSize: 15.0,),
          ),
            ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("* Being able to hold your breath for 10 seconds or more without coughing or feeling discomfort DOES NOT mean you are free from the coronavirus disease (COVID-19) or any other lung disease.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 6,style:  TextStyle(color: Colors.white,fontSize: 15.0 ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("* Drinking alcohol does not protect you against COVID-19 and can be dangerous.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,style:  TextStyle(color: Colors.white,fontSize: 15.0 ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("* COVID-19 virus can be transmitted in areas with hot and humid climates.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,style:  TextStyle(color: Colors.white,fontSize: 15.0 ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("* Cold weather and snow CANNOT kill the new coronavirus.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,style:  TextStyle(color: Colors.white,fontSize: 15.0 ,),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("* Taking a hot bath does not prevent the new coronavirus disease.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,style:  TextStyle(color: Colors.white,fontSize: 15.0 ,),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("* The new coronavirus CANNOT be transmitted through mosquito bites.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,style:  TextStyle(color: Colors.white,fontSize: 15.0),
                ),
              ),

        Padding(
          padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
          child: Text("Are hand dryers effective in killing the new coronavirus?", textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,style:  TextStyle(color: Colors.lightGreenAccent,fontSize: 18.0 ,fontWeight: FontWeight.w600),
          ),
        ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("No. Hand dryers are not effective in killing the 2019-nCoV. To protect yourself against the new coronavirus, you should frequently clean your hands with an alcohol-based hand rub or wash them with soap and water. Once your hands are cleaned, you should dry them thoroughly by using paper towels or a warm air dryer.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 8,style:  TextStyle(color: Colors.white,fontSize: 15.0 ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("Can an ultraviolet disinfection lamp kill the new coronavirus?", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,style:  TextStyle(color: Colors.lightGreenAccent,fontSize: 18.0 ,fontWeight: FontWeight.w600),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("UV lamps should not be used to sterilize hands or other areas of skin as UV radiation can cause skin irritation.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 8,style:  TextStyle(color: Colors.white,fontSize: 15.0 ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("How effective are thermal scanners in detecting people infected with the new coronavirus?", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,style:  TextStyle(color: Colors.lightGreenAccent,fontSize: 18.0,fontWeight: FontWeight.w600),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("Thermal scanners are effective in detecting people who have developed a fever (i.e. have a higher than normal body temperature) because of infection with the new coronavirus.However, they cannot detect people who are infected but are not yet sick with fever. This is because it takes between 2 and 10 days before people who are infected become sick and develop a fever.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10,style:  TextStyle(color: Colors.white,fontSize: 15.0),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("Can spraying alcohol or chlorine all over your body kill the new coronavirus?", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,style:  TextStyle(color: Colors.lightGreenAccent,fontSize: 18.0 ,fontWeight: FontWeight.w600),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("No.Spraying alcohol or chlorine all over your body will not kill viruses that have already entered your body. Spraying such substances can be harmful to clothes or mucous membranes (i.e. eyes, mouth). Be aware that both alcohol and chlorine can be useful to disinfect surfaces, but they need to be used under appropriate recommendations.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10,style:  TextStyle(color: Colors.white,fontSize: 15.0 ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("Can eating garlic help prevent infection with the new coronavirus?", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,style:  TextStyle(color: Colors.lightGreenAccent,fontSize: 18.0 ,fontWeight: FontWeight.w600),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("There is no evidence from the current outbreak that eating garlic has protected people from the new coronavirus.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10,style:  TextStyle(color: Colors.white,fontSize: 15.0),
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("Does the new coronavirus affect older people, or are younger people also susceptible?", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,style:  TextStyle(color: Colors.lightGreenAccent,fontSize: 18.0 ,letterSpacing: 1,fontWeight: FontWeight.w600),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35.0,right: 35.0),
                child: Text("People of all ages can be infected by the new coronavirus (2019-nCoV). Older people, and people with pre-existing medical conditions (such as asthma, diabetes, heart disease) appear to be more vulnerable to becoming severely ill with the virus.", textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10,style:  TextStyle(color: Colors.white,fontSize: 15.0 ),
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