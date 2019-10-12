import 'package:flutter/material.dart';
import 'package:ui_mmr/account.dart';
import 'package:ui_mmr/drawer.dart';
import 'package:ui_mmr/help.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
      // routes: {"My Account": (BuildContext context) => MyAccount('My Account')},
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe95b5b),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 16.0, left: 10.0),
            child: Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                    onPressed: () {}),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(right: 30.0, bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Make My Ride',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(75.0))),
            child: ListView(
              padding: EdgeInsets.all(25.0),
              children: <Widget>[
                GestureDetector(
                  
                child:Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(10.0, 10.0),
                            blurRadius: 10.0)
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(75.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFe95b5b), Colors.black])),
                        child:Row(
                          children: <Widget>[
                            
                          ],
                        )          
                ),
                onTap: (){print('Hello');}),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(10.0, 10.0),
                            blurRadius: 10.0)
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(75.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFe95b5b), Colors.black])),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
