import 'package:flutter/material.dart';

class QueStyle extends StatelessWidget {
  final String queText;
  QueStyle(this.queText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          queText,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ));
  }
}
