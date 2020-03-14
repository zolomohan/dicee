import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static int randomDie() => Random().nextInt(6) + 1;

  int leftDice = randomDie(), rightDice = randomDie();

  void randomize() => setState(() {
    leftDice = randomDie();
    rightDice = randomDie();
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Dicee',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 100.0,
            color: Colors.white,
          ),
        ),
        Container(
          height: 1.0,
          width: 190.0,
          color: Colors.white,
          margin: EdgeInsets.only(bottom: 40.0),
        ),
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: randomize,
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: randomize,
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
