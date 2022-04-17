import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class FFButtonOptions {
  FFButtonOptions({
    this.textStyle = const TextStyle(fontWeight: FontWeight.normal),
    this.elevation = 0,
    this.height = 100,
    this.width = 100,
    this.padding = const EdgeInsets.all(0),
    this.color = const Color(0xFF474747),
    this.disabledColor = const Color(0xFF474747),
    this.disabledTextColor = Colors.red,
    this.splashColor = Colors.red,
    this.iconSize = 20,
    this.iconColor = Colors.red,
    this.iconPadding = const EdgeInsets.all(8),
    this.borderRadius = 4,
    this.borderSide = BorderSide.none,
  });

  final TextStyle textStyle;
  final double elevation;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;
  final Color color;
  final Color disabledColor;
  final Color disabledTextColor;
  final Color splashColor;
  final double iconSize;
  final Color iconColor;
  final EdgeInsetsGeometry iconPadding;
  final double borderRadius;
  final BorderSide borderSide;
}



