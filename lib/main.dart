import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Note(
                  noteKey: 1,
                  color: Colors.red,
                ),
                Note(
                  noteKey: 2,
                  color: Colors.orange,
                ),
                Note(
                  noteKey: 3,
                  color: Colors.yellow,
                ),
                Note(
                  noteKey: 4,
                  color: Colors.green,
                ),
                Note(
                  noteKey: 5,
                  color: Colors.blue,
                ),
                Note(
                  noteKey: 6,
                  color: Colors.lightBlue,
                ),
                Note(
                  noteKey: 7,
                  color: Colors.purple,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Note extends StatelessWidget {
  final noteKey;
  final color;
  Note({@required this.noteKey, @required this.color}) : super();

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: this.color,
      onPressed: () {
        final player = AssetsAudioPlayer();
        player.open(
          'assets/note${this.noteKey}.wav',
        );
        player.play();
      },
      child: null,
    );
  }
}
