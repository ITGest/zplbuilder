import 'package:flutter/material.dart';
import 'zpl_composer.dart';
import 'flex.dart';

class ZplTitle implements ZplComposer {
  final String text;
  final int verticalPosition;
  final int horizontalPosition;
  final ZplFlex flex;

  ZplTitle(
      {@required this.text,
      @required this.verticalPosition,
      @required this.horizontalPosition,
      @required this.flex});

  @override
  String build([ZplComposer parent]) {
    if (flex == ZplFlex.left) {
      return '^FO$horizontalPosition, $verticalPosition^FD$text ^FB500,3,1,L^FS';
    }

    return """
     
     ^CFA,23     
     ^FO280, $verticalPosition^FD$text ^FB200,1,0,R^FS     
     """;
  }
}
