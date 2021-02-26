import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          "Above Below Game",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: DiceActivity(),
    ),
  ));
}

class DiceActivity extends StatefulWidget {
  @override
  _DiceActivityState createState() => _DiceActivityState();
}

class _DiceActivityState extends State<DiceActivity> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset(
                    'images/dice$leftDice.png',
                    color: Colors.limeAccent,
                  ))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDice = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightDice.png'))),
        ],
      ),
    );
  }
}
