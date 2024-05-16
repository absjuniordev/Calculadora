import 'package:calculadora/components/button.dart';
import 'package:calculadora/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: const Column(
        children: [
          ButtonRow(
            buttons: [
              Button(text: "AC"),
              Button(text: "%"),
              Button(text: "/"),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(text: "7"),
              Button(text: "8"),
              Button(text: "9"),
              Button(text: "X"),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(text: "4"),
              Button(text: "5"),
              Button(text: "6"),
              Button(text: "-"),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(text: "3"),
              Button(text: "2"),
              Button(text: "1"),
              Button(text: "+"),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(text: "0"),
              Button(text: "."),
              Button(text: "="),
            ],
          ),
        ],
      ),
    );
  }
}
