import 'package:flutter/material.dart';
import 'pages/dice_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Dice'),
        ),
        body: const DiceApp(),
      ),
    ),
  );
}
