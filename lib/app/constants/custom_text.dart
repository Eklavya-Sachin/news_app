import 'package:news_app/app/constants/app_fonts.dart';

import 'app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextStyle {
  static TextStyle textStyleBold = const TextStyle(
    fontFamily: AppFonts.robotoSlab,
    fontWeight: FontWeight.w700,
    color: AppColors.boldTextColor,
    fontSize: 29,
  );

  static TextStyle textStyleRegular = const TextStyle(
    fontFamily: AppFonts.robotoSlab,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteTextColor,
    fontSize: 20,
  );

  static TextStyle greyTextStyleBold14 = const TextStyle(
    fontFamily: AppFonts.robotoSlab,
    fontWeight: FontWeight.w700,
    color: AppColors.greyTextColor,
    fontSize: 14,
  );
  static TextStyle greyTextStyleBold12 = const TextStyle(
    fontFamily: AppFonts.robotoSlab,
    fontWeight: FontWeight.w700,
    color: AppColors.greyTextColor,
    fontSize: 14,
  );
}
