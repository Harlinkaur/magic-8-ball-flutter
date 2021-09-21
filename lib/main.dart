import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.blue[200],
            appBar: AppBar(
              title: Center(child: Text('ASK ME ANYTHING')),
              backgroundColor: Colors.blue[600],
            ),
            body: MagicBallPage(),
          )),
    );

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ballNumber = 1;
  void RandomBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: TextButton(
                onPressed: () {
                  RandomBall();
                  print('Magicball pressed');
                },
                child: Image.asset('images/ball$ballNumber.png'))));
  }
}
