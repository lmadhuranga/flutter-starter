import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              // Navigate back to the first screen by popping the current route
              // off the stack.
              Navigator.pushNamed(context, '/');
            },
            child: Text('Go back! Home'),
          ),
        ],
      ),
      persistentFooterButtons: <Widget>[
        RaisedButton(
          elevation: 10.0,
          onPressed: () {},
          color: Colors.green,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        RaisedButton(
          elevation: 10.0,
          onPressed: () {},
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
