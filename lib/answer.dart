import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 16),
        ),
        onPressed: selectHandler,
      ),
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

    );
  }
}
