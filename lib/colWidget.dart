import 'package:flutter/material.dart';
import './questionStyle.dart';
import './optionButton.dart';

class ColWidget extends StatelessWidget {
  final List<Map<String, Object>> passQuestions;
  final int passQIndex;
  final Function passButtonCheck;

  ColWidget(
      {@required this.passQuestions,
      @required this.passQIndex,
      @required this.passButtonCheck});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      QueStyle(passQuestions[passQIndex]['qText']),
      ...(passQuestions[passQIndex]['aOptions'] as List<Map<String, Object>>)
          .map((optText) {
        return OptBtnStyle(
            () => passButtonCheck(optText['points']), optText['optText']);
      }).toList()
    ]);
  }
}
