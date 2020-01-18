import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;
  Result(this.totalScore, this.resetHandler);

  String get getResultPhrase {
    String resultPhrase;
    if (totalScore < 16) {
      resultPhrase = 'You are awesome';
    } else if (totalScore < 20) {
      resultPhrase = 'You are cool';
    } else if (totalScore < 25) {
      resultPhrase = 'You are good';
    } else {
      resultPhrase = 'You are bad';
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getResultPhrase,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset'),
            onPressed: resetHandler,
            color: Colors.lightBlue,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
