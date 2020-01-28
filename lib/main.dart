import 'package:flutter/material.dart';

import 'package:ui_mmr/bike.dart';
import 'package:ui_mmr/drawer.dart';
import 'package:ui_mmr/home_page.dart';

import 'package:ui_mmr/scooty.dart';
import 'package:ui_mmr/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints,orientation);
        return MaterialApp(
          theme: ThemeData(primaryColor: Color(0xFFA50909)),
          home: HomePage(),

          // routes: {"My Account": (BuildContext context) => MyAccount('My Account')},
        );
      });
    });
  }
}
