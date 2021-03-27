import 'package:flutter/material.dart';

class OptBtnStyle extends StatelessWidget {
  final Function optselected;
  final String optText;
  OptBtnStyle(this.optselected, this.optText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.teal[200],
          child: Text(optText),
          onPressed: optselected),
    );
  }
}
