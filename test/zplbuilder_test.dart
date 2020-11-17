import 'package:flutter_test/flutter_test.dart';
import 'package:zplbuilder/builder/builder.dart';

void main() {
  test('Add a font string', () {
    final _builder = ZplPageBuilder();
    _builder.addFont(fontSize: 30, family: '0');
    _builder.addTitle(text: 'Encomenda 1');
    _builder.addMargin(30);

    _builder.addTitle(text: 'Encomenda 2');

    _builder.addFont(fontSize: 30, family: 'A');

    _builder.addMargin(30);
    _builder.addRow(label: 'Total:', value: '200.0');

    print(_builder.toString());
  });
}
