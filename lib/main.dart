import 'package:flutter/material.dart';
// Custom widgets imports
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['red', 'blue', 'black']
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['mouse', 'dog', 'cat']
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': ['SAW', 'titanic', 'fight club']
    },
    {
      'questionText': 'What\'s your favorite city?',
      'answers': ['Dammam', 'Jeddah', 'Riyadh']
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['pizza', 'sushi', 'pasta', 'Mandi']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < questions.length) {
      print('Next question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                  // RaisedButton(
                  //   child: Text('Answer 2'),
                  //   onPressed: () => print('Answer 2 chosen!'),
                  // ),
                  // RaisedButton(
                  //   child: Text('Answer 3'),
                  //   onPressed: () {
                  //     print('Answer 3 chosen!!!');
                  //   },
                  // ),
                ],
              )
            : Center(child: Text('Quiz is over.')),
      ),
    );
  }
}
