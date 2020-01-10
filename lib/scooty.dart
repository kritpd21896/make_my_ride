import 'package:flutter/material.dart';
import 'package:ui_mmr/bike_cards.dart';
import 'package:ui_mmr/date_picker.dart';

class MyScootyPage extends StatefulWidget {
  @override
  _MyScootyPageState createState() => _MyScootyPageState();
}

class _MyScootyPageState extends State<MyScootyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
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
                padding:EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 10.0),
             child: DateWidget(),
              ),
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Scooty',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Future', fontSize: 20.0),
                ),
                Container(
                  
                )
              ],
            ),
          ),
          Container(
           height: 260.0, 
           width: 300.0,
            padding: EdgeInsets.only(left: 20.0,right: 10.0),
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
      
    );
  }
}