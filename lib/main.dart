import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int noteNum, Color btnColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(noteNum);
        },
        color: btnColor,
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
            children: [
              buildKey(noteNum: 1, btnColor: Colors.red),
              buildKey(noteNum: 2, btnColor: Colors.orange),
              buildKey(noteNum: 3, btnColor: Colors.yellow),
              buildKey(noteNum: 4, btnColor: Colors.green),
              buildKey(noteNum: 5, btnColor: Colors.teal),
              buildKey(noteNum: 6, btnColor: Colors.blue),
              buildKey(noteNum: 7, btnColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
