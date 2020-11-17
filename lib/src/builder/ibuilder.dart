import 'dart:typed_data';

abstract class ZplBuilder {
  void addFont({int fontSize = 23, String family});
  void addTitle({String text});
  void addRow({String label, String value});
  void addMargin(int value);
  Future<void> addImage(Uint8List image);
}
