import 'dart:math';

import 'package:flutter/material.dart';

import '../../../core/utils/shared/constants/assest_path.dart';

class DiceRolling extends StatefulWidget {
  const DiceRolling({super.key});

  @override
  State<DiceRolling> createState() => _DiceRollingState();
}

class _DiceRollingState extends State<DiceRolling> {
  int diceNumber = 1;
  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You rolled:',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Image.asset(
              'images/dice$diceNumber.png',
              width: 200.0,
              height: 200.0,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: rollDice,
              child: Text('Roll the Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
