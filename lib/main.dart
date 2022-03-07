import 'package:first_app/answer.dart';
import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 1},
        {'text': 'Snake', 'score': 15},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Horse', 'score': 5},
        {'text': 'Dragon', 'score': 11},
      ]
    },
    {
      'questionText': 'Who\'s your favourite person?',
      'answers': [
        {'text': 'Ja', 'score': 11},
        {'text': 'David', 'score': 11},
        {'text': 'Winkler Srednji', 'score': 11},
      ]
    },
    /*{
      'questionText': 'What\'s your favourite number?',
      'answers': ['1', '2', '3', '4', '5', '6', '7', '8', '10', '11']
    },*/
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              backgroundColor: Colors.yellow,
              title: Text(
                'Quizzy',
                style: TextStyle(color: Colors.black),
              )),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result()),
    );
  }
}
