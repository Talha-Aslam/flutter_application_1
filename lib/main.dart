import 'package:flutter/material.dart';
import 'package:flutter_application_1/gardient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 64, 24, 176),
          Color.fromARGB(255, 125, 82, 200),
          Color.fromARGB(255, 235, 194, 60),
          Color.fromARGB(255, 240, 164, 77),
        ]),
      ),
    ),
  );
}
