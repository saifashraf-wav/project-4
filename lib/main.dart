import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:onboardingpage/OnBoardingScreen.dart';
import 'package:onboardingpage/homePage.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox("mybox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
