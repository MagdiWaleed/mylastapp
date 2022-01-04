import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What your favorite color ?!',
        'answers': ["1", "2", "3", "4"]
      },
      {
        'questionText': 'What your favorite colors ?!',
        'answers': ["1", "2", "3", "4"]
      },
      {
        'questionText': 'What your favorite colorss ?!',
        'answers': ["1", "2", "3", "4"]
      },
      {
        'questionText': 'What your favorite colorsss ?!',
        'answers': ["1", "2", "3", "4"]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'].toString(),
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
