import 'package:flutter/material.dart';
import 'package:ui_mmr/bike_cards.dart';
import 'package:ui_mmr/date_picker.dart';
import 'package:ui_mmr/size_config.dart';

class MyBikePage extends StatefulWidget {
  @override
  _MyBikePageState createState() => _MyBikePageState();
}

class _MyBikePageState extends State<MyBikePage> {
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
                  padding:EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*5,SizeConfig.blockSizeVertical*2,SizeConfig.blockSizeHorizontal*5,SizeConfig.blockSizeVertical*1),
               child: DateWidget(),
                ),
            Padding(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*5, SizeConfig.blockSizeVertical*1, 0.0, SizeConfig.blockSizeVertical*1),
              child: Text(
                'Royal Enfield',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Future', fontSize:SizeConfig.safeBlockHorizontal*5),
              ),
            ),
            Container(
             height: SizeConfig.blockSizeVertical*35, 
             
              padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*5,right: SizeConfig.blockSizeHorizontal*5),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                 Container(
                   child: BikeCard("assets/images/Bikes/classic350B.jpg","Classic 350 Black"),
                  
                 ),
                 Container(
                   child: BikeCard("assets/images/Bikes/classic350S.jpg","Classic 350 Silver"),

                 ),
                 Container(
                   child: BikeCard("assets/images/Bikes/classic_gunmetal_grey.jpg","Classic Gunmetal Grey"),

                 ),
                 Container(
                   child: BikeCard("assets/images/Bikes/OthunderbirdRxB.jpg","Thunderbird 350 Red & Black"),

                 ),
                 Container(
                   child: BikeCard("assets/images/Bikes/thunderbirdB.jpg","Thunderbird Black"),

                 ),
                 Container(
                   child: BikeCard("assets/images/Bikes/himalayan_bs4_snow.jpg","Himalayan BS4 Snow"),

                 ),
                 Container(
                   child: BikeCard("assets/images/Bikes/himalayan_bs4_ABS.jpg","Himalayan BS4 ABS"),

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
