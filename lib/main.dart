import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x) {
    final player = new AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildKey(int soundNo,String note,Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNo);
        },
        child: Text('$note'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1,'Sa',Colors.red),
              buildKey(2,'Re',Colors.yellow),
              buildKey(3,'ga',Colors.orange),
              buildKey(4,'Ma',Colors.blue),
              buildKey(5,'Pa',Colors.green),
              buildKey(6,'Dha',Colors.teal),
              buildKey(7,'Ni',Colors.pink)

            ],
          ),
        ),
      ),
    );
  }
}
