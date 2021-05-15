import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
            ElevatedButton(
                onPressed: answerQuestion,
                child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 3"),
            )
          ],
        ),
      ),
    );
  }
}
