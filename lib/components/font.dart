import 'zpl_composer.dart';

class Font implements ZplComposer {
  final String family;
  final int fontSize;

  Font({this.family = 'A', this.fontSize = 23});

  @override
  String build([ZplComposer parent])  {
    return '^CF$family, $fontSize';
  }
}
