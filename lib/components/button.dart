import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const defaultP = Color.fromRGBO(80, 76, 76, 1);
  static const operation = Color.fromRGBO(250, 158, 13, 1);

  const Button({
    super.key,
    required this.text,
    this.big = false,
    this.color = defaultP,
  });
  const Button.big({
    super.key,
    required this.text,
    this.big = true,
    this.color = defaultP,
  });
  const Button.operatio({
    super.key,
    required this.text,
    this.big = false,
    this.color = operation,
  });

  final String text;
  final bool big;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
