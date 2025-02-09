import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  final randomizder = Random();
  var curr = 2;

  void rollDice() {
    
    setState(() {
      curr = randomizder.nextInt(6)+1;
    });
    
  }
  @override
  Widget build(context){
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/dice-images/dice-$curr.png',
                width: 250
              ),
              TextButton(
                onPressed: rollDice,
                style : TextButton.styleFrom(
                padding : const EdgeInsets.only(top: 20.0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28.0),
                ),
                child: const Text('Roll Dice'),
                )
            ],
          );
  }
}
