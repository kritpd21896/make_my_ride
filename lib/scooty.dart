import 'package:flutter/material.dart';
import 'package:ui_mmr/bike_cards.dart';
import 'package:ui_mmr/date_picker.dart';
import 'package:ui_mmr/size_config.dart';

class MyScootyPage extends StatefulWidget {
  @override
  _MyScootyPageState createState() => _MyScootyPageState();
}

class _MyScootyPageState extends State<MyScootyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Hero(
            tag: 'bike_button',
              child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                  ],
                )),
                Container(
                  padding:EdgeInsets.fromLTRB(SizeConfig.widthMultiplier*5,SizeConfig.heightMultiplier*2,SizeConfig.widthMultiplier*5,SizeConfig.heightMultiplier*1),
               child: DateWidget(),
                ),
            Padding(
              padding: EdgeInsets.fromLTRB(SizeConfig.widthMultiplier*5, SizeConfig.heightMultiplier*1, 0.0, SizeConfig.heightMultiplier*1),
              child: Text(
                'Royal Enfield',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Future', fontSize:SizeConfig.widthMultiplier*5),
              ),
            ),
            Container(
             height: SizeConfig.heightMultiplier*35, 
             
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*5,right: SizeConfig.widthMultiplier*5),
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
               Container(
                 child: BikeCard("assets/images/Scooty/zestYellow.jpg","TVS Zest Yellow"),
                
               ),
               Container(
                 child: BikeCard("assets/images/Scooty/ntorqGrey.jpg","TVS Ntorq Grey"),

               ),
               Container(
                 child: BikeCard("assets/images/Scooty/ntorqBlue.jpg","TVS Ntorq Blue"),

               ),
               Container(
                 child: BikeCard("assets/images/Scooty/apriliaWhite.jpg","Aprilia White"),

               ),
               Container(
                 child: BikeCard("assets/images/Scooty/apriliaGreen.jpg","Aprilia Green"),

               ),
               Container(
                 child: BikeCard("assets/images/Scooty/apriliaBlack.jpg","Aprilia Black"),

               ),
               
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}