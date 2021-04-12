import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded builfunction({Color color, int y}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playSound(y);
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
            children: [
              builfunction(color: Colors.red, y: 1),
              builfunction(color: Colors.greenAccent, y: 2),
              builfunction(color: Colors.yellow, y: 3),
              builfunction(color: Colors.blue, y: 4),
              builfunction(color: Colors.cyanAccent, y: 5),
              builfunction(color: Colors.pinkAccent, y: 6),
              builfunction(color: Colors.deepPurple, y: 7),
            ],
          ),
        ),
      ),
    );
  }
}
