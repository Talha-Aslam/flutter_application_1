import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});
  @override
  State<RollerDice> createState() {
    return _RollerDiceState();
  }
}

class _RollerDiceState extends State<RollerDice> {
  var activedice = "assets/images/dice-1.png";

  void rolldice() {
    var randNum = randomizer.nextInt(6) + 1;
    setState(() {
      activedice = "assets/images/dice-$randNum.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activedice,
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 232, 123, 33),
              padding: const EdgeInsets.all(15)),
          child: const Text(
            "Roll Dice",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
