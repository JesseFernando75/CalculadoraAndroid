class Memory {
  static const operations = const ['%', "÷", "x", "-", "+", "="];
  String _value = "";
  final _buffer = [0.0, 0.0];
  String operation;
  int _bufferIndex = 0;

  void applyCommand(String text) {
    if (text == "AC") {
      _allClear();
    } else if (operations.contains(text)) {
      _setOperation(text);
    } else {
      _addDigit(text);
    }
  }

  _setOperation(String newOperation) {}

  _addDigit(String digit) {
    _value += digit;
  }

  _allClear() {
    _value = "";
  }

  String get value {
    return _value;
  }
}
