import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      "questionText":"What\'s your fav color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Greem", "score": 3},
        {"text": "White", "score": 1}
        ]
    },
    {
      "questionText": "What\'s your fav animal?",
      "answers": [
        {"text": "Rabbit", "score": 3},
        {"text": "Snake", "score": 11},
        {"text": "Elephant", "score": 5},
        {"text": "Lion", "score": 9}
        ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Quizine',

      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizine"),
        ),
        body:
        _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
            : Result(_totalScore),
      ),
    );
  }
}
