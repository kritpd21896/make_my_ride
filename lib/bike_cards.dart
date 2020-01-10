import 'package:flutter/material.dart';

import 'package:ui_mmr/size_config.dart';


class BikeCard extends StatelessWidget {
  String src;
  String title;
  
  BikeCard(this.src,this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: SizeConfig.blockSizeHorizontal*70,
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*2),
    
     child: Card(
       
       borderOnForeground: true,
       child: Wrap(

         children: <Widget>[
           Stack(
             children: <Widget>[
               
                Image.asset(src,fit: BoxFit.contain,),
              
                   
                   
                  
                   Padding(
                     padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*2),
                     child: Icon(Icons.favorite_border)),


                

                     
             ]
             
           ),
       
                Container(
                       
            color: Colors.grey,
            padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*2),
            child: ListTile(
              contentPadding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*1),
            
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
