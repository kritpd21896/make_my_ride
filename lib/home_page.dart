import 'package:flutter/material.dart';
import 'package:ui_mmr/scooty.dart';
import 'package:ui_mmr/size_config.dart';
import 'package:ui_mmr/drawer.dart';
import 'package:ui_mmr/bike_cards.dart';
import 'package:ui_mmr/bike.dart';
import 'package:ui_mmr/account.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: Image.asset("assets/images/icon.jpg"),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: ListView(children: [
      //  Padding(
         
      //    padding: EdgeInsets.only(top: SizeConfig.heightMultiplier*.5),
      //  ),
        Container(
       //   padding: EdgeInsets.fromLTRB(SizeConfig.widthMultiplier*1, SizeConfig.heightMultiplier*1, SizeConfig.widthMultiplier*1, SizeConfig.heightMultiplier*1),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
               width: SizeConfig.widthMultiplier*90,
                height: SizeConfig.heightMultiplier*30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/rider_1.jpg',
                        ),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: SizeConfig.heightMultiplier*3,
                left: SizeConfig.widthMultiplier*12,
                right: SizeConfig.widthMultiplier*2,
                child: Text(
                  'Rent your Motorcycle',
                  style: TextStyle(
        
                      fontFamily: 'Future',
                      color: Colors.white,
                      fontSize: SizeConfig.widthMultiplier*5),
                ),
              ),
              Positioned(
                top: SizeConfig.heightMultiplier*22,
                left: SizeConfig.widthMultiplier*65,
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
                          width: SizeConfig.widthMultiplier*25,
                          height: SizeConfig.heightMultiplier*5,
                        
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
                            
                            padding: EdgeInsets.all(SizeConfig.widthMultiplier*1),
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
          padding:  EdgeInsets.fromLTRB(SizeConfig.widthMultiplier*1, SizeConfig.heightMultiplier*1, SizeConfig.widthMultiplier*1, SizeConfig.heightMultiplier*1),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
              width: SizeConfig.widthMultiplier*90,
                height: SizeConfig.heightMultiplier*30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage('assets/images/rider_2.jpg'),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: SizeConfig.heightMultiplier*1,
                left: SizeConfig.widthMultiplier*12,
                right: SizeConfig.widthMultiplier*2,
                child: Text('Rent your Scooty',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Future',
                        fontSize: SizeConfig.widthMultiplier*5)),
              ),
              Positioned(
                top: SizeConfig.heightMultiplier*22,
                left: SizeConfig.widthMultiplier*65,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => MyScootyPage()));
                  },
                  child: Opacity(
                    opacity: .6,
                    child: Container(
                        width: SizeConfig.widthMultiplier*25,
                        height: SizeConfig.heightMultiplier*5,
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
                            
                            padding: EdgeInsets.all(SizeConfig.widthMultiplier*1),
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