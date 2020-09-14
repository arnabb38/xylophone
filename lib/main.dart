//  "arnabbasak"  //  "linkedin.com/in/arnab-basak"

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buttonKey({Color color, int soundNumber}) {
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buttonKey(
                color: Colors.red,
                soundNumber: 1,
              ),
              buttonKey(
                color: Colors.orange,
                soundNumber: 2,
              ),
              buttonKey(
                color: Colors.yellow,
                soundNumber: 3,
              ),
              buttonKey(
                color: Colors.green,
                soundNumber: 4,
              ),
              buttonKey(
                color: Colors.indigo,
                soundNumber: 5,
              ),
              buttonKey(
                color: Colors.blue,
                soundNumber: 6,
              ),
              buttonKey(
                color: Colors.purple,
                soundNumber: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
