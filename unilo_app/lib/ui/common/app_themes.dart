import 'package:flutter/material.dart';
import 'package:unilo_app/ui/common/app_colors.dart';
import 'package:unilo_app/ui/common/app_text_styles.dart';
import 'package:unilo_app/ui/views/extension/app_typography.dart';
import 'package:unilo_app/ui/views/extension/palette.dart';


class AppThemes {
  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primary6,
      brightness: Brightness.light,
      extensions: <ThemeExtension<dynamic>>[
        AppTypography(
          headlineBold24: AppTextStyles.headlineBold24,
          titleRegular16: AppTextStyles.titleRegular16,
          titleRegular14: AppTextStyles.titleRegular14,
          titleBold16: AppTextStyles.titleBold16,
        ),
        const Palette(
          gray1: gray1,
          gray7: gray7,
          gray11: gray11,
          primary6: primary6,
        ),
      ],
    );
  }
}
