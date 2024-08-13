import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:port_folio_app/utils/app_theme.dart';
import 'package:port_folio_app/view/LoginPage.dart';
import 'package:port_folio_app/view/main_view.dart';
import 'package:port_folio_app/view/splashScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home:  SplashScreen(),
    );
  }
}