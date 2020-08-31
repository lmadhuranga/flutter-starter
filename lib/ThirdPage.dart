import 'dart:developer';

import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text('Go back! Home'),
          ),
        ],
      ),
      persistentFooterButtons: <Widget>[
        RaisedButton(
          elevation: 10.0,
          onPressed: () {
            log('hi');
          },
          color: Colors.blueGrey,
          child: Icon(
            Icons.clear,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
