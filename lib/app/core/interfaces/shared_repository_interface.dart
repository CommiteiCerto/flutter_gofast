import 'package:flutter/material.dart';

abstract class ISharedeRepositoryInterface {
  String redUserInfo();
  saveUserInfo(String userInfo);

  Future<ThemeMode> readThemeMode();
  Future<bool> saveThemeMode(ThemeMode themeMode);
}
