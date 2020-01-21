import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

// Constructor
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 12) {
      resultText = 'We can be friends.';
    } else if (resultScore <= 17) {
      resultText = 'Eh, why not?';
    } else if (resultScore <= 22) {
      resultText = 'hmmm.... i\'ll have to think about it.';
    } else {
      resultText = 'no.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 250),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 16),
              ),
              textColor: Colors.blue,
              onPressed: resetHandler,
            ),
          ],
        ),
      ),
    );
  }
}
