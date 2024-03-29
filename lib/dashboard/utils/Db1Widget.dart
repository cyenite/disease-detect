import 'package:flutter/material.dart';
import 'package:disease_detect/dashboard/utils/DbColors.dart';

import 'DbConstant.dart';

Widget text(
  String text, {
  var fontSize = textSizeMedium,
  textColor = db1_textColorPrimary,
  var fontFamily = fontRegular,
  var isCentered = false,
  var maxLine = 1,
  var latterSpacing = 0.25,
  var textAllCaps = false,
  var isLongText = false,
}) {
  return Text(textAllCaps ? text.toUpperCase() : text,
      textAlign: isCentered ? TextAlign.center : TextAlign.start,
      maxLines: isLongText ? null : maxLine,
      style: TextStyle(fontFamily: fontFamily, fontSize: fontSize, color: textColor, height: 1.5, letterSpacing: latterSpacing));
}

BoxDecoration boxDecoration({double radius = 2, Color color = Colors.transparent, Color bgColor = db1_white, var showShadow = false}) {
  return BoxDecoration(
      color: bgColor,
      boxShadow: showShadow ? [BoxShadow(color: dbShadowColor, blurRadius: 10, spreadRadius: 2)] : [BoxShadow(color: Colors.transparent)],
      border: Border.all(color: color),
      borderRadius: BorderRadius.all(Radius.circular(radius)));
}
