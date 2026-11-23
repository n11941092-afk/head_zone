
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:head_zone/languages.dart';

import 'package:head_zone/views/about_screen.dart';
import 'package:head_zone/views/bluetooth_screen.dart';
import 'package:head_zone/views/call_screen.dart';
import 'package:head_zone/views/help_screen.dart';
import 'package:head_zone/views/home_screen.dart';
import 'package:head_zone/views/music_screen.dart';
import 'package:head_zone/views/onboarding_screen.dart';
import 'package:head_zone/views/setting_screen.dart';
import 'package:head_zone/views/splash_screen.dart';
import 'package:head_zone/views/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      translations: Languages(),

      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),

      home: SplashScreen(),
    );
  }
}
