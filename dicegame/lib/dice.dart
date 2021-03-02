import "package:flutter/material.dart";

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage('assets/images/dice1.png'),
          width: 100,
          height: 100,
        ),
      ],
    );
  }
}
