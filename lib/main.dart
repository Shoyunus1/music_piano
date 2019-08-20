import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Music());

class Music extends StatelessWidget {
  void soundNum(int sound) {
    final autoplay = AudioCache();
    autoplay.play('note$sound.wav');
  }

  Expanded frameSum({Color color, int sound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          soundNum(sound);
          print('hi');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              frameSum(color: Colors.red, sound: 1),
              frameSum(color: Colors.yellow, sound: 2),
              frameSum(color: Colors.green, sound: 3),
              frameSum(color: Colors.purple, sound: 4),
              frameSum(color: Colors.grey, sound: 5),
              frameSum(color: Colors.tealAccent, sound: 6),
              frameSum(color: Colors.redAccent, sound: 7),
              ],
          ),
        ),
      ),
    );
  }
}
