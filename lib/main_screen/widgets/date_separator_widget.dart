import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';

class DateSeparatorWidget extends StatelessWidget {
  final String date;
  const DateSeparatorWidget({
    Key? key,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.tundoraColor,
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            top: 16,
          ),
          child: Text(
            date,
            style: AppStyles.text16w400.copyWith(
              color: AppColors.blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
