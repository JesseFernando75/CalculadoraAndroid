import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;
  Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow([
            Button.dark('AC', cb, big: true),
            Button.dark('%', cb),
            Button.dark('÷', cb),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button('7', cb),
            Button('8', cb),
            Button('9', cb),
            Button.operation('x', cb),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button('4', cb),
            Button('5', cb),
            Button('6', cb),
            Button.operation('-', cb),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button('1', cb),
            Button('2', cb),
            Button('3', cb),
            Button.operation('+', cb),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button('0', cb, big: true),
            Button('.', cb),
            Button.operation('=', cb),
          ])
        ],
      ),
    );
  }
}
