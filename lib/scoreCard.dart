import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  final int scorePoints;
  final Function reStart;

  ScoreCard(this.scorePoints, this.reStart);

  String get endText {
    var scoreText = 'Finished...Congrats!!';
    if (scorePoints == 400) {
      scoreText = 'Awesome...You got all correct choices';
    } else if (scorePoints >= 300) {
      scoreText = 'Nice...You got most correct choices';
    } else if (scorePoints >= 200) {
      scoreText = 'Well...You got some correct choice';
    } else {
      scoreText = 'Okay...You need to figure out more';
    }
    return scoreText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            endText,
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: reStart, child: Text('Start Again!'))
        ],
      ),
    );
  }
}
