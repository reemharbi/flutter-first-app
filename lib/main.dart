import 'package:flutter/material.dart';
// Custom widgets imports
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'red', 'score': '10'},
        {'text': 'blue', 'score': '5'},
        {'text': 'black', 'score': '1'}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'mouse', 'score': '10'},
        {'text': 'dog', 'score': '10'},
        {'text': 'cat', 'score': '10'}
      ]
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        {'text': 'SAW', 'score': '10'},
        {'text': 'titanic', 'score': '8'},
        {'text': 'fight club', 'score': '4'}
      ]
    },
    {
      'questionText': 'What\'s your favorite city?',
      'answers': [
        {'text': 'Dammam', 'score': '1'},
        {'text': 'Jeddah', 'score': '2'},
        {'text': 'Riyadh', 'score': '3'}
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'pizza', 'score': '10'},
        {'text': 'sushi', 'score': '1'},
        {'text': 'pasta', 'score': '5'},
        {'text': 'Mandi', 'score': '3'}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
