import 'package:flutter/material.dart';
import './colWidget.dart';
import './scoreCard.dart';

void main() => runApp(MyBasicApp());

class MyBasicApp extends StatefulWidget {
  @override
  _MyBasicAppState createState() {
    return _MyBasicAppState();
  }
}

class _MyBasicAppState extends State<MyBasicApp> {
  var _qCards = [
    {
      'qText': 'This is question 1.',
      'aOptions': [
        {'optText': 'option 1A', 'points': 100},
        {'optText': 'option B', 'points': 10},
        {'optText': 'option C', 'points': 20},
        {'optText': 'option D', 'points': 30},
      ]
    },
    {
      'qText': 'This is question 2.',
      'aOptions': [
        {'optText': 'option A', 'points': 10},
        {'optText': 'option 2B', 'points': 100},
        {'optText': 'option C', 'points': 20},
        {'optText': 'option D', 'points': 30},
      ]
    },
    {
      'qText': 'This is question 3.',
      'aOptions': [
        {'optText': 'option A', 'points': 10},
        {'optText': 'option B', 'points': 20},
        {'optText': 'option 3C', 'points': 100},
        {'optText': 'option D', 'points': 30},
      ]
    },
    {
      'qText': 'This is question 4.',
      'aOptions': [
        {'optText': 'option A', 'points': 10},
        {'optText': 'option B', 'points': 20},
        {'optText': 'option C', 'points': 30},
        {'optText': 'option D4', 'points': 100},
      ]
    },
  ];

  var _qIndex = 0;
  var _scoredPoints = 0;

  void _resetStats() {
    setState(() {
      _qIndex = 0;
      _scoredPoints = 0;
    });
  }

  void _buttonCheck(int points) {
    _scoredPoints += points;
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Basic Quiz App'),
          ),
          body: _qIndex < _qCards.length
              ? ColWidget(
                  passQuestions: _qCards,
                  passQIndex: _qIndex,
                  passButtonCheck: _buttonCheck)
              : ScoreCard(_scoredPoints, _resetStats)),
    );
  }
}
