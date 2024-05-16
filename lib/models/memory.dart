class Memory {
  static const operations = ['%', '/', 'X', '-', '+', '='];

  final _buffer = [0.0, 0.0];
  int _bufferIndex = 0;
  late String operation;
  String _value = "0";
  bool _wipeValue = false;

  String get valeu {
    return _value;
  }

  void applyCommand(String command) {
    if (command == "AC") {
      _allClear();
    } else if (operations.contains(command)) {
      _setOperation(command);
    } else {
      _addDigit(command);
    }
  }

  _setOperation(String newOperation) {
    _wipeValue = true;
  }

  _addDigit(String digit) {
    final isDot = digit == '.';
    final wipeValeu = (_value == '0' && !isDot) || _wipeValue;

    if (isDot && _value.contains('.') && !wipeValeu) {
      return;
    }

    final emptyValue = isDot ? '0' : '';
    final currentValeu = wipeValeu ? emptyValue : _value;
    _value = currentValeu + digit;
    _wipeValue = false;
  }

  void _allClear() {
    _value = "0";
  }
}
