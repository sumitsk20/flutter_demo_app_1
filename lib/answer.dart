import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerQuestion;
  final String _answerText;

  Answer(this._answerQuestion, this._answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answerText),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: _answerQuestion,
      ),
    );
  }
}
