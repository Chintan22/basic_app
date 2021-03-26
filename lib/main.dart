import 'package:flutter/material.dart';
import './questionStyle.dart';

void main() => runApp(MyBasicApp());

class MyBasicApp extends StatefulWidget {
  @override
  _MyBasicAppState createState() {
    //bla bla
    return _MyBasicAppState();
  }
}

class _MyBasicAppState extends State<MyBasicApp> {
  var _qIndex = 0;

  void _buttonCheck() {
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var qCards = [
      'Question number 1',
      'Question number 2',
      'Question number 3'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic Quiz App'),
        ),
        body: Column(
          children: [
            QueStyle(qCards[_qIndex]),
            RaisedButton(
                child: Text('Select A'),
                onPressed: () => print('Option A selected')),
            RaisedButton(child: Text('Select B'), onPressed: _buttonCheck),
            RaisedButton(
                child: Text('Select C'),
                onPressed: () {
                  print('Option C selected with anonymous function');
                })
          ],
        ),
      ),
    );
  }
}
