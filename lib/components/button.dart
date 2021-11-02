import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;
  Button(this.text, this.cb, {this.big = false, this.color = DEFAULT});
  Button.dark(this.text, this.cb, {this.big = false, this.color = DARK});
  Button.operation(this.text, this.cb,
      {this.big = false, this.color = OPERATION});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: this.color,
          onPrimary: Colors.red,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
