import "package:indented_string_buffer/indented_string_buffer.dart";
import "package:unittest/unittest.dart";

void main() {
  test();
}

void test() {
  var sb = new IndentedStringBuffer();
  sb.writeln("if (a) {");
  sb.level++;
  sb.writeln("foo();");
  sb.write("bar();");
  sb.writeln();
  sb.level--;
  sb.write("} else {");
  sb.writeln();
  sb.level++;
  sb.writeln("//");
  sb.write("//");
  sb.writeln();
  sb.level--;
  sb.write("}");
  expect(sb.toString(), _pattern1, reason: "IndentedStringBuffer.toString()");
}

String _pattern1 = '''
if (a) {
  foo();
  bar();
} else {
  //
  //
}''';
