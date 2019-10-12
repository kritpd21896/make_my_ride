import 'package:flutter/material.dart';
import 'package:ui_mmr/account.dart';
import 'package:ui_mmr/help.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Kritartha'),
            accountEmail: Text('kpd@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('K'),
            ),
          ),
          ListTile(
            title: Text('My Account'),
            trailing: Icon(Icons.account_circle),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyAccount("My Account")));
            },
          ),
          ListTile(
            title: Text('Profile Authentication'),
            trailing: Icon(Icons.verified_user),
            onTap: null,
          ),
          Divider(),
          ListTile(
            title: Text('My Rides'),
            trailing: Icon(Icons.directions_bike),
            onTap: null,
          ),
          ListTile(
            title: Text('Help'),
            trailing: Icon(Icons.help),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Help("Help")));
            },
          ),
          Divider()
        ],
      ),
    );
  }
}
