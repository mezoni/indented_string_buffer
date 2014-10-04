part of indented_string_buffer;

class IndentedStringBuffer implements StringBuffer {
  final String indent;

  int _indentLength;

  bool _isNewline = true;

  int _level;

  StringBuffer _sb;

  IndentedStringBuffer([this.indent = "  "]) {
    if (indent == null) {
      throw new ArgumentError("indent: $indent");
    }

    _indentLength = indent.length;
    _level = 0;
    _sb = new StringBuffer();
  }

  int get level => _level;

  void set level(int level) {
    if (level >= 0) {
      _level = level;
    }
  }

  clear() {
    _isNewline = true;
    _sb.clear();
  }

  void write(Object obj) {
    if (_isNewline) {
      _writeIndent();
    }

    _sb.write(obj);
  }

  writeAll(Iterable objects, [String separator = ""]) {
    if (_isNewline) {
      _writeIndent();
    }

    _sb.writeAll(objects, separator);
  }

  writeCharCode(int charCode) {
    if (_isNewline) {
      _writeIndent();
    }

    _sb.writeCharCode(charCode);
  }

  writeln([Object obj = ""]) {
    if (_isNewline) {
      _writeIndent();
    }

    _isNewline = true;
    _sb.writeln(obj);
  }

  void _writeIndent() {
    _sb.write("".padRight(_level, indent));
    _isNewline = false;
  }

  bool get isEmpty => _sb.isEmpty;

  bool get isNotEmpty => _sb.isNotEmpty;

  int get length => _sb.length;

  String toString() => _sb.toString();
}
