import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.blue.shade800,
      ),
      body: MagicBall(),
    )),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ball = 1;
  void randomBall() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Expanded(
          child: TextButton(
            onPressed: () {
              randomBall();
            },
            child: Image.asset('images/ball$ball.png'),
          ),
        ),
      ),
    );
  }
}
