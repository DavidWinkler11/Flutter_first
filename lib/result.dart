import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You did it! ',
        style: TextStyle(
            color: Colors.yellow, fontSize: 69, fontStyle: FontStyle.italic),
      ),
    );
  }
}
