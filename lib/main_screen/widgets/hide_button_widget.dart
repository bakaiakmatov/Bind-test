import 'package:bind_test/constants/app_colors.dart';
import 'package:bind_test/constants/app_styles.dart';
import 'package:flutter/material.dart';

class HideButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const HideButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.blackColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: AppColors.whiteColor,
            width: 0.5,
          ),
        ),
        child: SizedBox(
          height: 32,
          width: 64,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: AppStyles.text14w400.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
