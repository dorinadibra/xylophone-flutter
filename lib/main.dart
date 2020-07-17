import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.pink[100], soundNumber: 1),
              buildKey(color: Colors.pink[200], soundNumber: 2),
              buildKey(color: Colors.pink[300], soundNumber: 3),
              buildKey(color: Colors.pink[400], soundNumber: 4),
              buildKey(color: Colors.pink[500], soundNumber: 5),
              buildKey(color: Colors.pink[600], soundNumber: 6),
              buildKey(color: Colors.pink[700], soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
