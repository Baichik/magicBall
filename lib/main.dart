import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MagicBall(),
  ),
);

class MagicBall extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Ask me Anything'),
          ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )
          ),
        child: Ball(),
      ),
    );
  }
}


class Ball extends StatefulWidget {
  @override
  BallState createState() => BallState();
}

class BallState extends State<Ball> {
  var ballNumber = 1;

  @override 
  Widget build(BuildContext context){
    return Center(
    
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
        )
    );
  }
}