import 'package:flutter_test/flutter_test.dart';
import 'package:zplbuilder/src/builder/builder.dart';

void main() {
  test('Add a font string', () {
    final _builtString = ZplPageBuilder()
        .addFont(fontSize: 30, family: '0')
        .addTitle(text: 'Encomenda 1')
        .addMargin(30)
        .addTitle(text: 'Encomenda 2')
        .addFont(fontSize: 30, family: 'A')
        .addMargin(30)
        .addRow(label: 'Total:', value: '200.0')
        .build();

    print(_builtString);
  });
}
