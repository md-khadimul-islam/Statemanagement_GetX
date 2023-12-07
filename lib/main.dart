import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/pages/home_page.dart';
import 'package:statemanagement/pages/screen_four.dart';
import 'package:statemanagement/pages/screen_one.dart';
import 'package:statemanagement/pages/screen_three.dart';
import 'package:statemanagement/pages/screen_two.dart';
import 'controller/languages_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en' 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/screenOne', page: () => const ScreenOne()),
        GetPage(name: '/screenTwo', page: () => const ScreenTwo()),
        GetPage(name: '/screenThree', page: () => const ScreenThree()),
        GetPage(name: '/screenFour', page: () => const ScreenFour()),
      ],
    );
  }
}