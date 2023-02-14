
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  late ThemeData currentTheme;

  ThemeProvider({
    required bool isDarkMode
  }){
    currentTheme = isDarkMode ? ThemeData.dark().copyWith(useMaterial3: true) : ThemeData.light().copyWith(useMaterial3: true);
  }

  setLightMode(){
    currentTheme = ThemeData.light().copyWith(useMaterial3: true);
    notifyListeners();
  }
  setDarkMode() {
    currentTheme = ThemeData.dark().copyWith(useMaterial3: true);
    notifyListeners();
  }

}