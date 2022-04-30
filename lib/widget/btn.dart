import 'dart:math';

import 'package:flutter/material.dart';

class ElevatedBtn extends StatefulWidget {
  const ElevatedBtn({Key? key}) : super(key: key);

  @override
  _ElevatedBtnState createState() => _ElevatedBtnState();
}

class _ElevatedBtnState extends State<ElevatedBtn> {
  int leftImageNumber = 2;
  int rightImageNumber = 4;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
