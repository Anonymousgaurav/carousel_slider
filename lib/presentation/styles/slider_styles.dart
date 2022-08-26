import 'package:aish_flutter_test/resources/colors_res.dart';
import 'package:aish_flutter_test/resources/fonts.dart';
import 'package:flutter/widgets.dart';

class SliderStyles {
  static TextStyle get title {
    return const TextStyle(
      fontSize: 20,
      color: ColorsRes.charcoal,
      fontFamily: Fonts.primaryFontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get description {
    return const TextStyle(
        fontSize: 15,
        color: ColorsRes.charcoal,
        fontFamily: Fonts.primaryFontFamily,
        fontWeight: FontWeight.w400,
        wordSpacing: 1.0);
  }
}
