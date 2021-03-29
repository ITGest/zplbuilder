import 'dart:typed_data';
import 'package:hex/hex.dart';
import 'package:flutter/material.dart';
import '../components/flex.dart';
import '../components/title.dart';
import '../components/font.dart';
import 'ibuilder.dart';

// THIS OBJECT WAS CREATED TO CONTROL THE ELEMENTS VERTICAL POSITION
// SO, IT ACTS LIKE A CONTEXT OR A STATE
// WHENEVER AN ELEMENT IS CREATED OR ADDED, THE VERTICAL POSITION INCREASES BY 50 OR 30;
// REGARDING TO THE VERTICAL POSITION AUTO INCREMENT IT'S ALSO POSSIBLE TO ADD MARGIN TOP
// WE ADD MARGIN TOP BY USING addMargin(INTEGER) METHOD AVAILLABLE IN ZplBuilder INSTANCE

class ZplPageBuilder implements ZplBuilder {
  int _verticalPosition = 0;
  String _currentString = '';

  @override
  ZplBuilder addFont({int fontSize = 23, String family = 'A'}) {
    if (_currentString == '') {
      _currentString += '^XA \n';
    }

    _currentString += Font(family: family, fontSize: fontSize).build() + '\n';

    return this;
  }

  @override
  ZplBuilder addTitle({String text}) {
    if (_currentString == '') {
      _currentString += '^XA \n';
      _verticalPosition += 50;
    } else {
      _verticalPosition += 30;
    }

    _currentString += ZplTitle(
                text: text,
                verticalPosition: _verticalPosition,
                horizontalPosition: 50,
                flex: ZplFlex.left)
            .build() +
        '\n';

    return this;
  }

  //THIS IS JUST A KEY-VALUE PAIR (label and its value)
  @override
  ZplBuilder addRow({String label, String value}) {
    if (_currentString == '') {
      _currentString += '^XA \n';
      _verticalPosition += 50;
    } else {
      _verticalPosition += 30;
    }

    _currentString += ZplTitle(
                text: label,
                verticalPosition: _verticalPosition,
                horizontalPosition: 50,
                flex: ZplFlex.left)
            .build() +
        '\n';
    _currentString += ZplTitle(
                text: value,
                verticalPosition: _verticalPosition,
                horizontalPosition: 280,
                flex: ZplFlex.right)
            .build() +
        '\n';

    return this;
  }

  //THIS IS THE MARGIN TOP
  @override
  ZplBuilder addMargin(int value) {
    _verticalPosition += value;

    return this;
  }

  @override
  Future<ZplBuilder> addImage(Uint8List imageBytes) async {
    if (_currentString == '') {
      _currentString += '^XA \n';
    } else {
      _verticalPosition += 100;
    }

    final _data = await decodeImageFromList(imageBytes);

    final _widthBytes = _data.width ~/ 8;

    final _total = _widthBytes * _data.height;

    final _hexCode = HEX.encode(imageBytes);
    final _asciiCode = String.fromCharCodes(HEX.decode(_hexCode));

    _currentString +=
        '^FO50,$_verticalPosition^GFA,$_total,$_total,$_widthBytes,$_asciiCode^FS \n';
    return this;
  }

  @override
  String toString() {
    return _currentString + '\n ^XZ';
  }

  @override
  String build() {
    return _currentString + '\n ^XZ';
  }
}
