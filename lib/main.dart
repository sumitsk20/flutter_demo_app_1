import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyCoolApp());
}

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyCoolAppState();
  }
}

class _MyCoolAppState extends State<MyCoolApp> {
  final _questions = const [
    {
      'question': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 9},
        {'text': 'Green', 'score': 7},
        {'text': 'Blue', 'score': 5},
      ],
    },
    {
      'question': 'what is your favorite animal?',
      'answers': [
        {'text': 'Donkey', 'score': 10},
        {'text': 'Lion', 'score': 9},
        {'text': 'Tiger', 'score': 7},
        {'text': 'Monkey', 'score': 5},
      ],
    },
    {
      'question': 'what is your favorite food?',
      'answers': [
        {'text': 'Burger', 'score': 10},
        {'text': 'Pizza', 'score': 9},
        {'text': 'Fried Rice', 'score': 7},
        {'text': 'Momos', 'score': 5},
      ],
    }
  ];
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetHandler() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more question');
    } else {
      print('No question left');
    }
  }

  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Cool App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetHandler),
      ),
    );
  }
}
