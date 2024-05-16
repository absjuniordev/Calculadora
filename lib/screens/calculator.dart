import 'package:calculadora/components/display.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Display(text: "123.45"),
          Text("Keyboard"),
        ],
      ),
    );
  }
}
