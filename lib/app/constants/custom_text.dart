import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextStyle {
  static TextStyle textStyleBold = GoogleFonts.robotoSlab(
    fontWeight: FontWeight.bold,
    color: AppColors.boldTextColor,
    fontSize: 20,
  );

  static TextStyle textStyleRegular = GoogleFonts.robotoSlab(
    fontWeight: FontWeight.w500,
    color: AppColors.whiteTextColor,
    fontSize: 20,
  );

  static TextStyle greyTextStyleBold = GoogleFonts.robotoSlab(
    fontWeight: FontWeight.bold,
    color: AppColors.greyTextColor,
    fontSize: 12,
  );
}
