import 'package:flutter/material.dart';
import 'package:shop_app_design/constants/colors.dart';

const kTextTheme = TextTheme(
  bodySmall: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  bodyMedium: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  bodyLarge: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  headlineSmall: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  headlineMedium: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  headlineLarge: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  titleSmall: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  titleMedium: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  titleLarge: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  labelSmall: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  labelMedium: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
  labelLarge: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
);

final TextButtonThemeData kTextButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: AppColors.kPrimaryColor,
    textStyle: const TextStyle(
      color: AppColors.kPrimaryColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
  ),
);

const kBottomNavigationBarTheme = BottomNavigationBarThemeData(
  backgroundColor: AppColors.kWhiteColor,
  selectedItemColor: AppColors.kPrimaryColor,
  unselectedItemColor: AppColors.kBlackColor,
  selectedLabelStyle: TextStyle(
    color: AppColors.kPrimaryColor,
    fontFamily: 'Poppins',
  ),
  unselectedLabelStyle: TextStyle(
    color: AppColors.kBlackColor,
    fontFamily: 'Poppins',
  ),
);