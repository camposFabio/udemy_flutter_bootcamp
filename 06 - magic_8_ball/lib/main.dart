import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Ball(title: 'Ask Me Anything'),
    );
  }
}

class Ball extends StatefulWidget {
  Ball({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int _ballNumber = 1;

  void _mudaImagem() {
    setState(() {
      _ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: FlatButton(
          child: Image(
            image: AssetImage('images/ball$_ballNumber.png'),
          ),
          onPressed: _mudaImagem,
        ),
      ),
    );
  }
}
