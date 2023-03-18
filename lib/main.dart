import 'package:flutter/material.dart';
import 'package:shop_app_design/constants/colors.dart';
import 'package:shop_app_design/presentation/splash_screen.dart';

import 'constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: AppColors.kPrimaryColor,
        colorScheme: const ColorScheme.light(
          primary: AppColors.kPrimaryColor,
          secondary: AppColors.kPrimaryColor,
        ),
        scaffoldBackgroundColor: AppColors.kWhiteColor,
        bottomNavigationBarTheme: kBottomNavigationBarTheme,
        textButtonTheme: kTextButtonTheme,
        textTheme: kTextTheme,
      ),
      home: SplashScreen(),
    );
  }
}
