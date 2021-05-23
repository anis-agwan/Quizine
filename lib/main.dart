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
  final _questions = const [
    {
      "questionText":"What\'s your fav color?",
      "answers": ["Black", "Red", "Green"]
    },
    {
      "questionText": "What\'s your fav animal?",
      "answers": ["Cat", "Dog", "Turtle"]
    },
  ];

  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
