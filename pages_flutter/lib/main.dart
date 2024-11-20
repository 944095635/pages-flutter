import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login Demos',
      defaultTransition: Transition.fadeIn,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        fontFamily: "AvantGardeStd",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
