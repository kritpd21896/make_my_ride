import 'package:flutter/material.dart';

import 'package:ui_mmr/bike.dart';
import 'package:ui_mmr/drawer.dart';



import 'package:ui_mmr/scooty.dart';
import 'package:ui_mmr/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(primaryColor: Color(0xFFA50909)),
      home: HomePage(),
    
      // routes: {"My Account": (BuildContext context) => MyAccount('My Account')},
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/icon.jpg"),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: ListView(children: [
        Padding(
         
          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*.5),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*1, SizeConfig.blockSizeVertical*1, SizeConfig.blockSizeHorizontal*1, SizeConfig.blockSizeVertical*1),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: SizeConfig.blockSizeHorizontal*90,
                height: SizeConfig.blockSizeVertical*30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/rider_1.jpg',
                        ),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: SizeConfig.blockSizeVertical*3,
                left: SizeConfig.blockSizeHorizontal*12,
                right: SizeConfig.safeBlockHorizontal*2,
                child: Text(
                  'Rent your Motorcycle',
                  style: TextStyle(
        
                      fontFamily: 'Future',
                      color: Colors.white,
                      fontSize: SizeConfig.safeBlockHorizontal*5),
                ),
              ),
              Positioned(
                top: SizeConfig.blockSizeVertical*22,
                left: SizeConfig.blockSizeHorizontal*65,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyBikePage()));
                  },
                  child: Hero(
                    tag: 'button_tag',
                    child: Opacity(
                      opacity: .6,
                      child: Container(
                          width: SizeConfig.blockSizeHorizontal*25,
                          height: SizeConfig.blockSizeVertical*5,
                        
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.black,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 1.0,
                                    spreadRadius: 2.0)
                              ]),
                          child: Container(
                            
                            padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*1),
                            child: Icon(Icons.keyboard_arrow_right,
                            color: Colors.white,)
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.white54,
          indent: 60.0,
        ),
        Padding(
          padding: EdgeInsets.all(1.0),
        ),
        Container(
          padding:  EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*1, SizeConfig.blockSizeVertical*1, SizeConfig.blockSizeHorizontal*1, SizeConfig.blockSizeVertical*1),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
              width: SizeConfig.blockSizeHorizontal*90,
                height: SizeConfig.blockSizeVertical*30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage('assets/images/rider_2.jpg'),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: SizeConfig.blockSizeVertical*1,
                left: SizeConfig.blockSizeHorizontal*12,
                right: SizeConfig.safeBlockHorizontal*2,
                child: Text('Rent your Scooty',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Future',
                        fontSize: SizeConfig.safeBlockHorizontal*5)),
              ),
              Positioned(
                top: SizeConfig.blockSizeVertical*22,
                left: SizeConfig.blockSizeHorizontal*65,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => MyScootyPage()));
                  },
                  child: Opacity(
                    opacity: .6,
                    child: Container(
                        width: SizeConfig.blockSizeHorizontal*25,
                        height: SizeConfig.blockSizeVertical*5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 1.0,
                                  spreadRadius: 2.0)
                            ]),
                        child:  Container(
                            
                            padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*1),
                            child: Icon(Icons.keyboard_arrow_right,
                            color: Colors.white,)
                          )),
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.white54,
          indent: 60.0,
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.call,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Color(0xFFa10202),
        child: Container(
          height: 60.0,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => Drawer(
                          child: MyDrawer(),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}
