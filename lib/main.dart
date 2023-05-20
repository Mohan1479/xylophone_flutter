import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.deepOrange),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.lightGreen),
                buildKey(5, Colors.green),
                buildKey(6, Colors.lightBlue),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(String name) {
    final player = AudioPlayer();
    player.play(AssetSource('$name.wav'));
  }

  Expanded buildKey(int note, Color keyColor) {
    return Expanded(
      child: Container(
        color: keyColor,
        child: TextButton(
          onPressed: () {
            playSound('note$note');
          },
          child: Text(''),
        ),
      ),
    );
  }
}

class XyloButton extends StatelessWidget {
  var player = AudioPlayer();

  XyloButton({Key? key, required Color buttonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(''));
  }
}
