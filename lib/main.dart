import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_application_2/widget/btn.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Dice'),
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftImageNumber = 2;
  int rightImageNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Image.asset('assets/dice$leftImageNumber.png'),
              ),
              Expanded(
                child: Image.asset('assets/dice$rightImageNumber.png'),
              ),
            ],
          ),
          ElevatedBtn(),
        ],
      ),
    );
  }
}
