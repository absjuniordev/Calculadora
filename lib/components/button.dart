import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
