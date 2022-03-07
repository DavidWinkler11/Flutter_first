import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.white,
        width: 3,
      )),
      width: double.infinity,
      margin: EdgeInsets.all(11),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
