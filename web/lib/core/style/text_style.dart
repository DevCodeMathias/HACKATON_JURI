import 'package:flutter/material.dart';
import 'package:website_juridico/core/style/colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static AppTextStyles? _instance;

  static AppTextStyles get instance {
    _instance ??= AppTextStyles._();
    return _instance!;
  }

  TextStyle get smallBlack => TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.onPrimary);

  TextStyle get smallSemiPlusBlack => TextStyle(
      fontSize: 18, fontWeight: FontWeight.normal, color: AppColors.onPrimary);

  TextStyle get smallPlusBlack => TextStyle(
      fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.onPrimary);


  TextStyle get mediumBlack => TextStyle(
      fontSize: 40, fontWeight: FontWeight.bold, color: AppColors.onPrimary);
}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}
