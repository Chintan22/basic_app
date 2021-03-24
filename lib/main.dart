import 'package:flutter/material.dart';

void main() => runApp(MyBasicApp());

class MyBasicApp extends StatelessWidget {
  void buttonCheck() {
    print('Option B selected with method pointer');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic Quiz App'),
        ),
        body: Column(
          children: [
            Text('First sample question'),
            RaisedButton(
                child: Text('Select A'),
                onPressed: () => print('Option A selected')),
            RaisedButton(child: Text('Select B'), onPressed: buttonCheck),
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
