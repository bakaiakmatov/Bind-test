import 'package:bind_test/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainScreenProvider extends ChangeNotifier {
  late final String selectedValue;

  void onChanged(String? value) {
    selectedValue = value!;
  }

  String? validator(String? value) {
    if (value!.isEmpty) {
      return 'Ошибка';
    } else {
      return null;
    }
  }

  List<DropdownMenuItem<String>> menuItems = const [
    DropdownMenuItem(
      value: 'USD Dollar',
      child: Text(
        'USD Dollar',
        style: TextStyle(color: AppColors.whiteColor),
      ),
    ),
    DropdownMenuItem(
      value: 'EUR Euro',
      child: Text(
        'EUR Euro',
        style: TextStyle(color: AppColors.whiteColor),
      ),
    ),
    DropdownMenuItem(
      value: 'GBP Pound',
      child: Text(
        'GBP Pound',
        style: TextStyle(color: AppColors.whiteColor),
      ),
    ),
  ];
}
