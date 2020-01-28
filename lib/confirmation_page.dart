import 'package:flutter/material.dart';
import 'package:ui_mmr/bike_cards.dart';
import 'package:ui_mmr/size_config.dart';


class ConfirmationPage extends StatelessWidget {
    String src;
  String title;
  
  ConfirmationPage(this.src,this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:SizeConfig.heightMultiplier*10),
          ),
       Row(
         children: <Widget>[
           Expanded(
             flex: 3,
                     
              
                 child: Container(
                   color: Colors.white,
                 ),),
          
           
           Expanded(
             flex: 7,
             child: Container(
               color: Colors.red,
             ),

             ),
         ],
       )


         
        ],

      ),
      
    );
  }
}