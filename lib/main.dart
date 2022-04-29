import 'package:flutter/material.dart';
import 'dart:math';

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
          ElevatedButton(
            onPressed: () {
              setState(() {
                leftImageNumber = Random().nextInt(6) + 1;
                rightImageNumber = Random().nextInt(6) + 1;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quit',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Pacifico'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
