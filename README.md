#indented_string_buffer
==========

The implementation of StringBuffer that can indent new lines.

```dart
import "package:indented_string_buffer/indented_string_buffer.dart";

void main() {
  var sb = new IndentedStringBuffer();
  sb.writeln("if (a) {");
  sb.level++;
  sb.writeln("foo();");
  sb.level--;
  sb.writeln("} else {");
  sb.level++;
  sb.writeln("// Hi!");
  sb.level--;
  sb.writeln("}");
  print(sb);
}

```

Output:

```
if (a) {
  foo();
} else {
  // Hi!
}
```
