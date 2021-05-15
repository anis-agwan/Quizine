import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What\'s your fav color?",
      "What\'s your fav animal?",
    ];

    return MaterialApp(
      title: 'Quizine',

      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizine"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(
                onPressed: _answerQuestion,
                child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 3"),
            )
          ],
        ),
      ),
    );
  }
}
