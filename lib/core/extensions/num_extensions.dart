import 'package:flutter/widgets.dart';

extension NumSpacingExtensions on num {
  /// `16.verticalGap` → `SizedBox(height: 16)`
  Widget get verticalGap => SizedBox(height: toDouble());

  /// `16.horizontalGap` → `SizedBox(width: 16)`
  Widget get horizontalGap => SizedBox(width: toDouble());

  /// `300.ms` → `Duration(milliseconds: 300)`
  Duration get ms => Duration(milliseconds: toInt());

  /// `2.seconds` → `Duration(seconds: 2)`
  Duration get seconds => Duration(seconds: toInt());
}
