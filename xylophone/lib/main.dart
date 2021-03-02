import "package:flutter/material.dart";
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  AudioCache player = AudioCache();

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKeyBox({int noteNumber, color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => playSound(noteNumber),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKeyBox(noteNumber: 1, color: Colors.red),
            buildKeyBox(noteNumber: 2, color: Colors.orange),
            buildKeyBox(noteNumber: 3, color: Colors.yellow),
            buildKeyBox(noteNumber: 4, color: Colors.green),
            buildKeyBox(noteNumber: 5, color: Colors.teal),
            buildKeyBox(noteNumber: 6, color: Colors.blue),
            buildKeyBox(noteNumber: 7, color: Colors.purple),
          ],
        )),
      ),
    ));
  }
}
