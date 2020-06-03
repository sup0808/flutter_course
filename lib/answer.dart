import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  _AnswerState createState() => _AnswerState(this.selectHandler);
}

class _AnswerState extends State<Answer> {
    final Function selectHandler;
   _AnswerState(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child:  RaisedButton(
               color: Colors.red,
              child: Text('Answer 1'),
              onPressed:selectHandler,
              ),
    );
  }
}