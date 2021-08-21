import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int track) {
    final player = AudioCache();
    player.play('note$track.wav');
  }

  Expanded buildKey(int track, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(track);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.zero,
        ),
        child: Text(''),
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
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}
