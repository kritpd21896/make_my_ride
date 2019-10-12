import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  final String title;

  MyAccount(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
