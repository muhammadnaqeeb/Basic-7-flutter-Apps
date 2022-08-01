import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  Widget buildbutton(int soundNumber, Color btncolor) {
    return Expanded(
      child: FlatButton(
        color: btncolor,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        child: Text(""),
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
            children: <Widget>[
              buildbutton(1, Colors.red),
              buildbutton(2, Colors.orange),
              buildbutton(3, Colors.yellow),
              buildbutton(4, Colors.green),
              buildbutton(5, Colors.teal),
              buildbutton(6, Colors.blue),
              buildbutton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
