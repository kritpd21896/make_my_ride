

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:ui_mmr/main.dart';
import 'package:flutter/cupertino.dart';

class DateWidget extends StatefulWidget {
  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
       child:  RaisedButton(
                color: Color(0xFFa10202),
                child: ListTile(
                  leading: Icon(Icons.calendar_today,color:Colors.white),
                  title: Text("Click to select pickup date",style: TextStyle(color: Colors.white),),
                ),

                onPressed: (
                
                ){
                  
                
                },
              ),
      
    );
  }
}

