import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: Scaffold(
            body: MyApp(),
          ),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int soundKey(int inputNumber) {
    final player = AudioCache();
    player.play('note$inputNumber.wav');
  }

  Expanded musicButton(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          soundKey(soundNumber);
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        musicButton(Colors.teal[100], 1),
        musicButton(Colors.teal[200], 2),
        musicButton(Colors.teal[300], 3),
        musicButton(Colors.teal[400], 4),
        musicButton(Colors.teal[500], 5),
        musicButton(Colors.teal[600], 6),
        musicButton(Colors.teal[700], 7),
      ],
    );
  }
}
