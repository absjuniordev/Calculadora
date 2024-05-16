class Memory {
  static const operations = ['%', '/', 'X', '-', '+', '='];

  final _buffer = [0.0, 0.0];
  int _bufferIndex = 0;
  late String _operation;
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
    if (_bufferIndex == 0) {
      _operation = newOperation;
      _bufferIndex = 1;
    } else {
      _buffer[0] = _calculation();
      _buffer[1] = 0.0;
      _value = _buffer[0].toString();
      _value = _value.endsWith(".0") ? _value.split('.')[0] : _value;
    }
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

    _buffer[_bufferIndex] = double.tryParse(_value) ?? 0;
    print(_buffer);
  }

  void _allClear() {
    _value = "0";
  }

  _calculation() {
    switch (_operation) {
      case '%':
        return _buffer[0] % _buffer[1];
      case '/':
        return _buffer[0] / _buffer[1];
      case 'X':
        return _buffer[0] * _buffer[1];
      case '-':
        return _buffer[0] - _buffer[1];
      case '+':
        return _buffer[0] + _buffer[1];
    }
  }
}
