import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizine',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizine"),
        ),
        body: Text("Hello, Friend"),
      ),
    );
  }
}
