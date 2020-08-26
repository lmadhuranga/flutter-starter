import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final count;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Count: $count',
      style: TextStyle(
        color: Colors.green,
        fontSize: 40.0,
      ),
    );
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text(
        'Plus++',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<CounterPage> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
//    return Row(children: <Widget>[
//      CounterIncrementor(onPressed: _increment),
//      CounterDisplay(count: _counter),
//    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          children: [
            CounterDisplay(count: _counter),
            CounterIncrementor(onPressed: _increment),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add),
        onPressed: () {
          _increment();
        },
      ),
    );
  }
}
