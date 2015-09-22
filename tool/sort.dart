import 'dart:convert';

import 'package:sqlite3_bindings/headers.dart';

void main() {
  var text = SQLITE3_HEADERS["sqlite3.lib.h"];
  text = _sortFunctions(text);
  print(text);
}

String _sortFunctions(String text) {
  var declarations = <String, List<String>>{};
  var index = 0;
  var lines = new LineSplitter().convert(text);
  while (true) {
    var line = _readLine(lines, index++);
    if (line == null) {
      break;
    }

    if (line.indexOf("(") != -1) {
      index--;
      break;
    }
  }

  while (true) {
    var line = _readLine(lines, index++);
    if (line == null) {
      break;
    }

    var end = line.indexOf("(");
    if (end == -1) {
      throw "Required '(' (${index - 1}): $line";
    }

    var start = end;
    while (start != 0) {
      var c = line[start--];
      if (c == " ") {
        break;
      }
    }

    if (start == 0) {
      throw "Required ' ' (${index - 1}): $line";
    }

    var name = line.substring(start + 2, end);
    var declaration = <String>[line];
    while (true) {
      line = _readLine(lines, index++);
      if (line == null) {
        throw "Required declaration (${index - 1}): $line";
      }

      if (line.trim().isEmpty) {
        break;
      }

      declaration.add(line);
    }

    if (declarations.containsKey(name)) {
      throw "Duplicate name: $name";
    }

    declarations[name] = declaration;
    line = _readLine(lines, index++);
    if (line == null) {
      break;
    }

    if (line == "#endif") {
      break;
    }

    index--;
  }

  var keys = declarations.keys.toList();
  keys.sort((String a, String b) => a.compareTo(b));
  var result = <String>[];
  for (var key in keys) {
    var declaration = declarations[key];
    for (var line in declaration) {
      result.add(line);
    }

    result.add("");
  }

  return result.join("\n");
}

String _readLine(List<String> lines, int index) {
  if (index < lines.length) {
    return lines[index];
  }

  return null;
}
