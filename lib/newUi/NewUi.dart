import 'package:flutter/material.dart';
import 'package:flutter1/newUi/BottomBar.dart';

class NewUi extends StatelessWidget {
  String title;

  NewUi({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
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
      bottomNavigationBar: BottomBar(),
    );
  }
}
