import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool ThemeMode = false;

  ChangeTheme() {
    ThemeMode = !ThemeMode;
    notifyListeners();
  }
}
