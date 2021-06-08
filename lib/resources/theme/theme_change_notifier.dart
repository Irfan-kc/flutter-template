import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/util/preferences.dart';

class ThemeChangeNotifier extends ChangeNotifier {
  bool _isDarkTheme;

  ThemeChangeNotifier.darkTheme() : _isDarkTheme = true;

  ThemeChangeNotifier.lightTheme() : _isDarkTheme = false;

  ThemeChangeNotifier.systemTheme(BuildContext context)
      : _isDarkTheme =
            MediaQuery.platformBrightnessOf(context) == Brightness.dark;

  ThemeChangeNotifier.fromThemeMode(BuildContext context, ThemeMode themeMode)
      : _isDarkTheme = themeMode == ThemeMode.dark ||
            (themeMode == ThemeMode.system &&
                MediaQuery.platformBrightnessOf(context) == Brightness.dark);

  bool get isDarkTheme => _isDarkTheme;

  ThemeMode get getThemeMode => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  Future<void> setDarkTheme() async {
    _isDarkTheme = true;
    await setIsDarkThemePreferred(_isDarkTheme);
    notifyListeners();
  }

  Future<void> setLightTheme() async {
    _isDarkTheme = false;
    await setIsDarkThemePreferred(_isDarkTheme);
    notifyListeners();
  }

  /// Toggles the current theme value. Returns `true` if dark is the new theme.
  Future<bool> toggleTheme() async {
    _isDarkTheme = !_isDarkTheme;
    await setIsDarkThemePreferred(_isDarkTheme);
    notifyListeners();
    return _isDarkTheme;
  }
}
