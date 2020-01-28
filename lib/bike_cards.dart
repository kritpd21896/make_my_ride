import 'package:flutter/material.dart';

import 'package:ui_mmr/size_config.dart';
import 'package:ui_mmr/confirmation_page.dart';


class BikeCard extends StatelessWidget {
  String src;
  String title;
  
  BikeCard(this.src,this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: SizeConfig.widthMultiplier*70,
      padding: EdgeInsets.all(SizeConfig.widthMultiplier*2),
    
     child: Card(
       
       borderOnForeground: true,
       child: Wrap(

         children: <Widget>[
           Stack(
             children: <Widget>[
               
                Image.asset(src,fit: BoxFit.contain,),
              
                   
                   
                  
                   Padding(
                     padding: EdgeInsets.all(SizeConfig.widthMultiplier*2),
                     child: Icon(Icons.favorite_border)),
                    GestureDetector(
                      onTap:() {Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ConfirmationPage(src,title)));},
                                          child: Padding(
                        padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*56,top: SizeConfig.widthMultiplier*2),
                        child: Icon(Icons.add),
                      ),
                    )

                

                     
             ]
             
           ),
       
                Container(
                       
            
            padding: EdgeInsets.all(SizeConfig.widthMultiplier*2),
            child: ListTile(
              contentPadding: EdgeInsets.all(SizeConfig.widthMultiplier*1),
            
              trailing: Text("899/Day"),
              title: Text(title,style: TextStyle(color: Colors.black,),),
              subtitle: Text("89/hr",),
              
            ),
          )

         
          
         ],
       ),
     ),
    );
  }
}
