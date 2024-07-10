import 'package:flutter/material.dart';
import 'package:flutter_application_1/style_text.dart';

class GradientContainer extends StatelessWidget {
  // GradientContainer({Key}) : super(key: Key);
  // const GradientContainer(this.color1, this.color2, this.color3, {super.key});
  // final Color color1;
  // final Color color2;
  // final Color color3;
  const GradientContainer(
    this.colors, {
    super.key,
    // required this.colors its a optional
  });

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          // colors: [
          //   color1,
          //   color2,
          //   color3,
          //   // Color.fromARGB(255, 55, 14, 126),
          //   // Color.fromARGB(255, 131, 72, 149),
          //   // Color.fromARGB(255, 90, 77, 124),
          //   // Color.fromARGB(146, 89, 87, 243),
          // ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyleText("Hello World!"),
      ),
    );
  }
}
