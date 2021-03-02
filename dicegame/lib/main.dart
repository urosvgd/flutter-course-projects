import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicey'),
          backgroundColor: Colors.red,
        ),
        body: DicePage()),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber2 = 2;
  int diceNumber1 = 1;

  void rollDices() {
    setState(() {
      diceNumber1 = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    rollDices();
                  },
                  child: Image.asset('assets/images/dice$diceNumber1.png'))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    rollDices();
                  },
                  child: Image.asset('assets/images/dice$diceNumber2.png'))),
        ],
      ),
    );
  }
}
