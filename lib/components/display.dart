import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: const Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,
                text,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  fontSize: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
