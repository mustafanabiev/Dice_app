
import 'package:flutter/material.dart';

import '../widget/btn.dart';

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
         const ElevatedBtn(),
        ],
      ),
    );
  }
}
