import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask me anything!',
              style: TextStyle(
            fontSize: 25.0,
                fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    void react(){
      ballNumber=Random().nextInt(5)+1;
    }
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            react();
            print('I got Clicked');
          });

        },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}
