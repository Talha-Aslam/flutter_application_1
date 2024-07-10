import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  // const StyleText(String text, {super.key}) : text = text;
  const StyleText(this.text, {super.key});

  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );
  }
}
