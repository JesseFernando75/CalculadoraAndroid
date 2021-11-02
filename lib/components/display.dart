import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  final String text;
  static const Color COLORBACKGROUND = Color.fromRGBO(48, 48, 48, 1);
  Display(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: COLORBACKGROUND,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: AutoSizeText(text,
                  minFontSize: 10,
                  maxFontSize: 60,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    decoration: TextDecoration.none,
                    fontSize: 60,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
