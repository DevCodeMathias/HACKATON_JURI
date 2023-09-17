import 'dart:ui';

class AppColors {
  AppColors._();
  static AppColors? _instance;

  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  static Color get primary => const Color(0xFFBB2649);
  static Color get onPrimary => const Color(0xFF000000);
  static Color get tertiary => const Color(0xFFE5E6ED);
}
