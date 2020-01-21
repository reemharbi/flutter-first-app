import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          'Answer selected',
          style: TextStyle(fontSize: 16),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
