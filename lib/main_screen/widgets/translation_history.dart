import 'package:bind_test/constants/app_colors.dart';
import 'package:bind_test/constants/app_styles.dart';
import 'package:flutter/material.dart';

class TranslationHistory extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  final String sum;
  const TranslationHistory({
    Key? key,
    required this.image,
    required this.title,
    required this.time,
    required this.sum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 32,
            height: 32,
            child: ClipOval(
              child: Image.asset(image),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppStyles.text16w400.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                time,
                style: AppStyles.text8w400.copyWith(
                  color: AppColors.dustyGrayColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '$sum USD',
            style: AppStyles.text16w400.copyWith(
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
