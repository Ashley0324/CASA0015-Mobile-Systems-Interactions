import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'app_colors.dart';
import 'app_size.dart';

const List<BoxShadow> kBtnShadow = [
  BoxShadow(
    color: kBtnShadowColor,
    offset: Offset(0, 8),
    blurRadius: 20,
  )
];

const TextStyle kTitleTextStyle = TextStyle(
  fontSize: kTitleTextSize,
  color: kTextColor,
  fontWeight: kMediumFontWeight,
);

const TextStyle kBodyTextStyle = TextStyle(
  fontSize: kBodyTextSize,
  color: kTextColor,
  fontWeight: kLightFontWeight,
);

const TextStyle kBtnTextStyle = TextStyle(
  color: kBtnColorStart,
  fontSize: kBtnTextSize,
  fontWeight: kMediumFontWeight,
);

InputBorder kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputBorderRadius),
  borderSide: BorderSide(
    width: 1,
    color: kInputBorderColor,
  ),
);
